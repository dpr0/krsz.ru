# frozen_string_literal: true

require 'application_responder'

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  serialization_scope :view_context

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :load_lens_and_cameras
  protect_from_forgery with: :exception
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:email, :password, :remember_me)
    end

    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation)
    end
  end

  def load_lens_and_cameras
    @camera_models = CameraModel.all
    @camera_models_items_count = @camera_models.joins(:camera_items).group(:id).count
    @lens_models = LensModel.all
    @lens_models_brand_count = @lens_models.group(:brand).count
    @lens_models_items_count = @lens_models.joins(:lens_items).group(:id).count
  end

  def self.render_with_serializer(user, *args)
    ActionController::Renderer::RACK_KEY_TRANSLATION['warden'] ||= 'warden'
    proxy = Warden::Proxy.new({}, Warden::Manager.new({})).tap{|i| i.set_user(user, scope: :user) }
    renderer = self.renderer.new('warden' => proxy)
    renderer.render(*args)
  end

  protected :configure_permitted_parameters

  private

  def brand_or_mount
    return { mount: params[:mount] } if params[:mount]
    return { brand: params[:brand] } if params[:brand]
    {}
  end
end

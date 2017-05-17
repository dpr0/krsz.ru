# frozen_string_literal: true

class CameraItemsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_camera_item, only: %i[show edit update destroy]
  respond_to :html

  def index
    @camera_items = CameraItem.all
    respond_with(@camera_items)
  end

  def show
    respond_with(@camera_item)
  end

  def new
    @camera_item = current_user.camera_items.new(camera_model_id: params[:camera_model])
    respond_with(@camera_item)
  end

  def edit; end

  def create
    @camera_item = current_user.camera_items.create(camera_item_params)
    respond_with(@camera_item)
  end

  def update
    @camera_item.update(camera_item_params)
    respond_with(@camera_item)
  end

  def destroy
    @camera_item.update(visible: false)
    respond_with(@camera_item)
  end

  private

  def set_camera_item
    @camera_item = CameraItem.find(params[:id])
  end

  def camera_item_params
    params.require(:camera_item).permit(:camera_model_id, :user_id, :description, :price, :votes_count, :visible, :used, :image)
  end
end

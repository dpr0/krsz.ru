# frozen_string_literal: true

class CameraModelsController < ApplicationController
  respond_to :html

  def index
    respond_with(@camera_models)
  end

  def show
    @camera_model = CameraModel.find(params[:id])
    @camera_items = @camera_model.camera_items
    respond_with(@camera_model)
  end
  
  def select_camera_models
    @select_camera_models = CameraModel.where(brand_or_mount)
  end
end

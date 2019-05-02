# frozen_string_literal: true

class Api::V1::CameraModelsController < Api::V1::BaseController
  def index
    # respond_with(@camera_models = CameraModel.joins(:camera_items))
    # respond_with @camera_models.to_json(include: :camera_items)
    respond_with @camera_models
  end

  def show
    @camera_model = CameraModel.find(params[:id])
    respond_with @camera_model
  end
end

class Api::V1::CameraModelsController < Api::V1::BaseController
  def index
    respond_with(@camera_models = CameraModel.all)
  end
end
class Api::V1::LensModelsController < Api::V1::BaseController
  def index
    # respond_with @lens_models.to_json(include: :lens_items)
    @lens_models = LensModel.includes(:lens_items)
    respond_with @lens_models
  end
end
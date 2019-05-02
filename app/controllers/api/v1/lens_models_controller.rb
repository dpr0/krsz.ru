# frozen_string_literal: true

class Api::V1::LensModelsController < Api::V1::BaseController
  def index
    # respond_with(@lens_models = LensModel.joins(:lens_items))
    # respond_with @lens_models.to_json(include: :lens_items)
    respond_with @lens_models
  end

  def show
    @lens_model = LensModel.find(params[:id])
    respond_with @lens_model
  end
end

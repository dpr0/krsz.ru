class Api::V1::LensItemsController < Api::V1::BaseController
  def index
    @lens_items = LensModel.find(params[:lens_model_id]).lens_items
    respond_with @lens_items
  end
end
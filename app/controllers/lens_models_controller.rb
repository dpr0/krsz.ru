# frozen_string_literal: true

class LensModelsController < ApplicationController
  respond_to :html

  def index
    respond_with(@lens_models)
  end

  def show
    @lens_model = LensModel.find(params[:id])
    @lens_items = @lens_model.lens_items
    respond_with(@lens_model)
  end

  def select_lens_models
    @select_lens_models = LensModel.where(brand_or_mount)
  end

  def edit_index
    @lens_models = @lens_models.order('updated_at DESC')
    respond_with(@lens_models)
  end

  def update_sony_forum_link
    lens = LensModel.find(params[:id])
    lens.update(sony_forum_link: params[:link])
  end
end


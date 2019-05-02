# frozen_string_literal: true

class LensItemsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_lens_item, only: %i[show edit update destroy crop_image]
  respond_to :html

  def index
    @lens_items = LensItem.all
    respond_with(@lens_items)
  end

  def show
    respond_with(@lens_item)
  end

  def task_show
    @task = Cc::Task.find_by(processInstanceId: params[:id])
    respond_with(@lens_item)
  end

  def new
    # Cc::ProcessDefinition.get('KrszProcess').start_submit(SecureRandom.uuid, variables, serialize_json_as_object: true)
    @lens_item = current_user.lens_items.new(lens_model_id: params[:lens_model])
    respond_with(@lens_item)
  end

  def edit; end

  def create
    @lens_item = current_user.lens_items.create(lens_item_params)
    redirect_to crop_image_lens_item_path(@lens_item)
  end

  def update
    @lens_item.update(lens_item_params)
    redirect_to crop_image_lens_item_path(@lens_item)
  end

  def destroy
    @lens_item.update(visible: false)
    respond_with(@lens_item)
  end

  def crop_image
    if request.put?
      @lens_item.crop_image!(params[:lens_item][:image_crop_data])
      redirect_to lens_item_path(@lens_item)
    end
  end

  private

  def variables
    {}
  end

  def set_lens_item
    @lens_item = LensItem.find(params[:id])
  end

  def lens_item_params
    params.require(:lens_item).permit(:lens_model_id, :user_id, :description, :price, :votes_count, :visible, :used, :image)
  end
end

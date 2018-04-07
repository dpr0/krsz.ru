class HousesController < ApplicationController
  before_action :set_house, only: :show
  respond_to :html

  def index
    @houses = House.all
    respond_with(@houses)
  end

  def show
    respond_with(@house)
  end

  private
    def set_house
      @house = House.find(params[:id])
    end

    def house_params
      params.require(:house).permit(:street, :number)
    end
end

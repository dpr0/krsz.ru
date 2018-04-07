class EntrancesController < ApplicationController
  before_action :set_entrance, only: :show

  respond_to :html

  def index
    @house = House.find params[:house_id]

    @entrances = @house.entrances
    respond_with(@entrances)
  end

  def show
    respond_with(@entrance)
  end

  private
    def set_entrance
      @entrance = Entrance.find(params[:id])
    end

    def entrance_params
      params.require(:entrance).permit(:number)
    end
end

class WelcomeController < ApplicationController
  def index
    Sensor.check
    @sensor = Sensor.last
    @sensors = Sensor.all
  end
end

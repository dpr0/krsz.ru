class WelcomeController < ApplicationController
  def index
    sensor_check
  end

  private

  def sensor_check
    response = RestClient.get('192.168.1.108:3000', {accept: :json})
    @sensor ||= response ? JSON.parse(response.body) : {}
  rescue Errno::ECONNREFUSED
  end
end

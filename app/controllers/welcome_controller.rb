class WelcomeController < ApplicationController
  def index
    @sensor = JSON.parse(RestClient.get('192.168.1.108:3000', {accept: :json}).body)
  end
end

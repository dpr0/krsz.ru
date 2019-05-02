# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    body = RestClient.get('192.168.1.107').body

    JSON.parse body
  end
end

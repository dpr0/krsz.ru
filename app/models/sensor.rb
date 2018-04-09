class Sensor < ApplicationRecord
  def self.check
    response = RestClient.get('192.168.1.108:3000', {accept: :json})
    if response
      body = JSON.parse(response.body)
      create(co2: body['co2'], temp: body['temp']) if body['crc'] == 'true'
    end
  rescue Errno::ECONNREFUSED
  end
end
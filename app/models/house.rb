# frozen_string_literal: true

class House < ApplicationRecord
  has_many :entrances
  has_many :questions

  def name
    street + ', ' + number
  end
end

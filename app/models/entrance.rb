# frozen_string_literal: true

class Entrance < ApplicationRecord
  has_many :questions
  belongs_to :house
end

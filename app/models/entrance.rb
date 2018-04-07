class Entrance < ApplicationRecord
  has_many :questions
  belongs_to :house
end

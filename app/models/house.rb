class House < ApplicationRecord
  has_many :entrances
  has_many :questions

  def name
    self.street + ', ' + self.number
  end
end

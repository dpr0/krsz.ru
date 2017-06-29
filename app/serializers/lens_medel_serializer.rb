class LensModelSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :mount, :info
  has_many :lens_items

  def info
    object.brand + ' ' + object.name
  end
end

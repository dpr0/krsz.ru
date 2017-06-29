class CameraModelSerializer < ActiveModel::Serializer
  attributes :id, :brand, :name, :mount, :info
  has_many :camera_items

  def info
    object.brand + ' ' + object.name
  end
end

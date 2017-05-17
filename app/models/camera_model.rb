# frozen_string_literal: true

class CameraModel < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :camera_items
  scope :a_mount_cam, -> { where(mount: 'A-mount') }
  scope :e_mount_cam, -> { where(mount: 'E-mount') }
end

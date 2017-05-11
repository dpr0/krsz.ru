# frozen_string_literal: true

class CameraItem < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :camera_model
  belongs_to :user
end

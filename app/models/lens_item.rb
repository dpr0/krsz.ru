# frozen_string_literal: true

class LensItem < ApplicationRecord
  attr_reader :image_crop_data

  mount_uploader :image, ImageUploader
  belongs_to :lens_model
  belongs_to :user

  def crop_image!(c)
    c.each { |k, v| c[k] = v.to_i }
    @image_crop_data = c
    image.recreate_versions!
  end
end

# encoding: utf-8
# frozen_string_literal: true

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w[jpg jpeg png]
  end

  version :normal do
    process :crop!
    process resize_to_fill: [400, 400]
  end

  version :thumb, from_version: :normal do
    process :crop!
    process resize_to_fill: [80, 80]
  end

  version :thumbnail do
    process resize_to_fill: [150, 150]
  end

  version :minithumb, from_version: :normal do
    process :crop!
    process resize_to_fill: [30, 30]
  end

  def crop!
    return unless model.image_crop_data
    manipulate! do |img|
      img.crop!(
        model.image_crop_data[:x],
        model.image_crop_data[:y],
        model.image_crop_data[:width],
        model.image_crop_data[:height]
      )
    end
  end
end

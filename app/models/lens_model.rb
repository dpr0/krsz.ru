# frozen_string_literal: true

class LensModel < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :lens_items
  scope :a_mount,    -> { where(mount: "A-mount") }
  scope :e_mount,    -> { where(mount: "E-mount") }
  scope :sony,       -> { where(brand: "SONY") }
  scope :minolta,    -> { where(brand: "MINOLTA") }
  scope :carl_zeiss, -> { where(brand: "Carl Zeiss") }
  scope :tamron,     -> { where(brand: "Tamron") }
  scope :sigma,      -> { where(brand: "Sigma") }
  scope :samyang,    -> { where(brand: "Samyang") }
end

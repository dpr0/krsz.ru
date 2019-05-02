# frozen_string_literal: true

class AddFieldsToCameraModel < ActiveRecord::Migration[5.1]
  def change
    add_column :camera_models, :full_name,        :string
    add_column :camera_models, :dyxum_link,       :string
    add_column :camera_models, :dyxum_img_link,   :string
    add_column :camera_models, :release_year,     :string
    add_column :camera_models, :status,           :string
    add_column :camera_models, :viewfinder,       :string
    add_column :camera_models, :format,           :string
    add_column :camera_models, :effective_pixels, :string
    add_column :camera_models, :max_resolution,   :string
    remove_column :camera_models, :weather,       :boolean
    remove_column :camera_models, :stab,          :string
  end
end

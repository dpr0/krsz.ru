# frozen_string_literal: true
class CreateCameraModels < ActiveRecord::Migration[5.0]
  def change
    create_table :camera_models do |t|
      t.string :brand
      t.string :name
      t.string :mount
      t.boolean :ff
      t.boolean :weather
      t.string :stab

      t.timestamps
    end
  end
end

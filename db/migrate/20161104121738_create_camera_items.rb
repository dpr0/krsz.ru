# frozen_string_literal: true
class CreateCameraItems < ActiveRecord::Migration[5.0]
  def change
    create_table :camera_items do |t|
      t.references :camera_model, foreign_key: true
      t.references :user, foreign_key: true
      t.string :description
      t.integer :price
      t.integer :votes_count
      t.boolean :visible
      t.boolean :used
      t.string :image

      t.timestamps
    end
  end
end

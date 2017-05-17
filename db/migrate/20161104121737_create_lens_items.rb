# frozen_string_literal: true

class CreateLensItems < ActiveRecord::Migration[5.0]
  def change
    create_table :lens_items do |t|
      t.references :lens_model, foreign_key: true
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

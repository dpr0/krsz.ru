# frozen_string_literal: true

class CreateLensModels < ActiveRecord::Migration[5.1]
  def change
    create_table :lens_models do |t|
      t.string :brand
      t.string :name
      t.string :mount
      t.integer :frmin
      t.integer :frmax
      t.float :diafmin
      t.float :diafmax
      t.boolean :fix
      t.boolean :ff
      t.boolean :macro
      t.boolean :weather
      t.string :afdrive

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :street
      t.string :number
      t.timestamps
    end
  end
end

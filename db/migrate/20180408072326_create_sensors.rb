# frozen_string_literal: true

class CreateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :sensors do |t|
      t.integer :temp
      t.integer :co2
      t.timestamps
    end
  end
end

# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :body
      t.string :title, null: false
      t.integer :user_id
      t.timestamps
    end
  end
end

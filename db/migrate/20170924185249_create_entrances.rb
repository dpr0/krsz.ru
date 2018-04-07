class CreateEntrances < ActiveRecord::Migration[5.1]
  def change
    create_table :entrances do |t|
      t.integer :number
      t.integer :house_id

      t.timestamps
    end
  end
end

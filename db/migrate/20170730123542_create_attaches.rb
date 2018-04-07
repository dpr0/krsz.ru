class CreateAttaches < ActiveRecord::Migration[5.1]
  def change
    create_table :attaches do |t|
      t.string :file
      t.string :attachable_type
      t.integer :attachable_id
      t.timestamps
    end
    add_index :attaches, [:attachable_id, :attachable_type]
  end
end

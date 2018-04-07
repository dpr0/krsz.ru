class AddEntranceIdAndHouseIdToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :house_id,    :integer, default: false
    add_column :questions, :entrance_id, :integer, default: false
  end
end

class AddMealIdsToInformation < ActiveRecord::Migration[5.1]
  def change
    add_column :information, :meal_id, :integer
  end
end

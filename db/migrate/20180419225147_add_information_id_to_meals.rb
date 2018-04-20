class AddInformationIdToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :information_id, :integer
  end
end

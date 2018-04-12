class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :description
      t.float :price
      t.time :cookingtime

      t.timestamps
    end
  end
end

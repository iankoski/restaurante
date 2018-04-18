class CreateMealsIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :meals_ingredients do |t|
      t.integer :meal_id
      t.integer :ingredient_id
    end
  end
end

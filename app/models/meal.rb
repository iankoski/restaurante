class Meal < ApplicationRecord
  validates_presence_of :description
  has_many :ingredients
end
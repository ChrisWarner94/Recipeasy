class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  MEAL_TIMES=["breakfast", "lunch", "dinner"]
end

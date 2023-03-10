class AddMealTimeToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :meal_time, :string
  end
end

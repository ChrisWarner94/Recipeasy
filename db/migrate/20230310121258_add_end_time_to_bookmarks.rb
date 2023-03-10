class AddEndTimeToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :end_time, :datetime
  end
end

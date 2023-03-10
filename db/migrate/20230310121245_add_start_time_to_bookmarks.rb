class AddStartTimeToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :start_time, :datetime
  end
end

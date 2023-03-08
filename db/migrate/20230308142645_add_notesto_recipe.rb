class AddNotestoRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :notes, :string
  end
end

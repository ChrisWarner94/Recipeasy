class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.text :instruction
      t.string :prep_time
      t.string :diet_tag
      t.string :servings
      t.boolean :public
      t.text :ingredients
      t.text :video_url

      t.timestamps
    end
  end
end

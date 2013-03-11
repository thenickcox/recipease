class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :link
      t.string :season
      t.text :directions

      t.timestamps
    end
  end
end

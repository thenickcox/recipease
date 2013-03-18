class AddDataToRecipes < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.boolean :protein
      t.string :course
      t.string :source
    end
  end
end

class RelateRecipesToUsers < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.integer :user_id
    end
  end
end

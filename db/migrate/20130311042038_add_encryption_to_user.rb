class AddEncryptionToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :encrypted_password
    end
  end
end

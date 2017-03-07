class CreateGlibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :glibraries do |t|
      t.string :username
      t.string :password
      t.string :token
      t.boolean :valid_token
      t.timestamp :token_remaining

      t.timestamps
    end
  end
end

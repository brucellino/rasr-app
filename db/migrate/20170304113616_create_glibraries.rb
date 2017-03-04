class CreateGlibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :glibraries do |t|

      t.timestamps
    end
  end
end

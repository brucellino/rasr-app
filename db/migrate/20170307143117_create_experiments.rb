class CreateExperiments < ActiveRecord::Migration[5.0]
  def change
    create_table :experiments do |t|
      t.string :user
      t.string :language
      t.boolean :primary
      t.string :repo

      t.timestamps
    end
  end
end

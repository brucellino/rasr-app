class CreateFgapiServers < ActiveRecord::Migration[5.0]
  def change
    create_table :fgapi_servers do |t|

      t.timestamps
    end
  end
end

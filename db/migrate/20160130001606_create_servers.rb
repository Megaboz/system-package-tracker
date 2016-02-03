class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :hostname
      t.string :os_family
      t.string :os_release

      t.timestamps null: false
    end
    add_index :servers, [:hostname], :unique => true

  end
end

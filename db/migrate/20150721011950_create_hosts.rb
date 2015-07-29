class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname
      t.string :macaddress
      t.string :ipaddress

      t.references :domains, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :hosts, :hostname, :unique => true
    add_index :hosts, :macaddress, :unique => true
    add_index :hosts, :ipaddress, :unique => true
  end
end

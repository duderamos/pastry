class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname
      t.string :macaddress
      t.string :ipaddress
      t.references :domain, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index "hosts", ["hostname"], name: "index_hosts_on_hostname", unique: true
    add_index "hosts", ["ipaddress"], name: "index_hosts_on_ipaddress", unique: true
    add_index "hosts", ["macaddress"], name: "index_hosts_on_macaddress", unique: true
  end
end

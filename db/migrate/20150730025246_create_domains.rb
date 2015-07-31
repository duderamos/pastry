class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains, force: :cascade do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index "domains", ["name"], name: "index_domains_on_name", unique: true
  end
end

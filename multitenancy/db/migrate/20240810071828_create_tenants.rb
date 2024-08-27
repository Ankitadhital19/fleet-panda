class CreateTenants < ActiveRecord::Migration[7.2]
  def change
    create_table :tenants do |t|
      t.string :name, null: flase, unique: true

      t.timestamps
    end
  end
end

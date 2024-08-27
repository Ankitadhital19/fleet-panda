class RemoveColumnFromUsers < ActiveRecord::Migration[7.2]
  def change
    remove_index :users, :tenant_id
    remove_column :users, :tenant_id, :integer
  end
end

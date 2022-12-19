class RemoveRoleFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :role, :boolean
  end
end

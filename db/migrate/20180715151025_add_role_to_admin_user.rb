class AddRoleToAdminUser < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :role, :string, default: 'ADMIN'
  end
end

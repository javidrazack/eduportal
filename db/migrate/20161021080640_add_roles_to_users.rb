class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :supervisor_role, :boolean, default: false
    add_column :users, :faculty_role, :boolean, default: true
  end
end

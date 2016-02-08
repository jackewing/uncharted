class RemoveUsersWards < ActiveRecord::Migration
  def change
    drop_table :users_wards
    add_column :users, :ward_id, :integer
  end
end

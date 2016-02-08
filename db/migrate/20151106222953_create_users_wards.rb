class CreateUsersWards < ActiveRecord::Migration
  def change
    create_table :users_wards do |t|
      t.integer :ward_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

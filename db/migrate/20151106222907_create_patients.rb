class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :nhi
      t.integer :ward_id

      t.timestamps null: false
    end
  end
end

class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :state
      t.integer :patient_round_id

      t.timestamps null: false
    end
  end
end

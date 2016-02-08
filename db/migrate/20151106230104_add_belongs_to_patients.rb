class AddBelongsToPatients < ActiveRecord::Migration
  def change
    add_column :patient_rounds, :patient_id, :integer
    add_column :patient_rounds, :user_id, :integer
  end
end

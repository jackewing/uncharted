class CreatePatientRounds < ActiveRecord::Migration
  def change
    create_table :patient_rounds do |t|
      t.integer :respiratory_rate
      t.string :supplemental_o2
      t.integer :o2_saturation
      t.decimal :temperature
      t.integer :blood_pressure_max
      t.integer :blood_pressure_min
      t.string :blood_pressure_comment
      t.integer :heart_rate
      t.string :level_of_consciousness
      t.integer :total
      t.integer :pain_level
      t.boolean :urine_output_greater_than_1000ml

      t.timestamps null: false
    end
  end
end

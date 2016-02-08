class RenamePatientRoundsToObservationSets < ActiveRecord::Migration
  def change
    rename_table :patient_rounds, :observation_sets
  end
end

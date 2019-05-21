class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :plausibility
      t.datetime :incident_occurrence
      t.string :incident_location
      t.string :witness_gibberish
      t.float :blood_alcohol_level
      t.string :responding_police_department_location
      t.float :incident_long
      t.float :incident_lat

      t.timestamps
    end
  end
end

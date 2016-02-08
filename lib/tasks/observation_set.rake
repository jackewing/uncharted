namespace :db do
  AVPU = ["a","v","p","u"]
  urineBool = [true, false]
  time = Time.now
  count = 0
  desc 'create fake observation sets';

  task :populate => :environment do

    require 'populator'
    require 'faker'

    (1..5).each do 
      Ward.find_or_create_by(id: 1)
      patient = Patient.create(name: Faker::Name.name, nhi: Faker::Number.number(10), ward_id: 1)
      ObservationSet.populate 24 do |observation_set|
        observation_set.respiratory_rate = Faker::Number.between(20, 24)
        observation_set.supplemental_o2 = Faker::Number.between(0, 3)
        observation_set.o2_saturation = Faker::Number.between(95, 100)
        observation_set.temperature = Faker::Number.between(34, 38).to_f
        observation_set.blood_pressure_max = Faker::Number.between(85, 120)
        observation_set.blood_pressure_min = Faker::Number.between(60, 80)
        observation_set.blood_pressure_comment = Faker::Lorem.sentence(3)
        observation_set.heart_rate = Faker::Number.between(80, 105)
        observation_set.level_of_consciousness = AVPU.sample
        observation_set.total = Faker::Number.between(0, 5)
        observation_set.pain_level = Faker::Number.between(0, 10)
        observation_set.urine_output_greater_than_1000ml = urineBool.sample
        observation_set.created_at = time
        observation_set.updated_at = time
        observation_set.patient_id = patient.id
        time = time + 1.hour
      end
    end
  end
end

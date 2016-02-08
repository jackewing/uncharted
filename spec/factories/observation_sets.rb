FactoryGirl.define do
  factory :observation_set do
    respiratory_rate 1
supplemental_o2 "MyString"
o2_saturation 1
temperature "9.99"
blood_pressure_max 1
blood_pressure_min 1
blood_pressure_comment "MyString"
heart_rate 1
level_of_consciousness "MyString"
total 1
pain_level 1
urine_output_greater_than_1000ml false
  end

end

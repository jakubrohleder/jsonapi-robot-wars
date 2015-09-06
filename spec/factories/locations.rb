# == Schema Information
#
# Table name: locations
#
#  id         :uuid             not null, primary key
#  planet_id  :uuid
#  cords_x    :string
#  cords_y    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :location do
    cords_x {Faker::Number.between(-10000, 10000)}
    cords_y {Faker::Number.between(-10000, 10000)}
    planet {Planet.all.sample}
  end
end

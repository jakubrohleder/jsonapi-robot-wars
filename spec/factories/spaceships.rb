# == Schema Information
#
# Table name: spaceships
#
#  id                 :uuid             not null, primary key
#  name               :string
#  durability         :integer
#  quality            :integer
#  pilot_id           :uuid
#  pilot_type         :string
#  spaceship_model_id :uuid
#  location_id        :uuid
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :spaceship do
    name {'Spaceship ' + Faker::Commerce.product_name}
    durability {Faker::Number.between(1, 100)}
    quality {Faker::Number.between(1, 100)}

    location
    spaceship_model {SpaceshipModel.all.sample}

    pilot {Robot.all.sample}
  end
end

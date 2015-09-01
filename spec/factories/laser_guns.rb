# == Schema Information
#
# Table name: laser_guns
#
#  id         :uuid             not null, primary key
#  name       :string
#  durability :integer
#  quality    :integer
#  power      :integer
#  type       :string
#  rarity     :string
#  owner_id   :uuid
#  owner_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :laser_gun do
    name {'Shooting ' + Faker::Commerce.product_name}
    durability {Faker::Number.between(1, 100)}
    quality {Faker::Number.between(1, 100)}
    power {Faker::Number.between(1, 100)}
    type {['Rifle', 'Minigun', 'Pistol'].sample}
    rarity {['Rare', 'Common', 'Epic'].sample}

    owner {Robot.all.sample}
  end
end

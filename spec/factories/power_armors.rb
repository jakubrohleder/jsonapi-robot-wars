# == Schema Information
#
# Table name: power_armors
#
#  id         :uuid             not null, primary key
#  name       :string
#  durability :integer
#  quality    :integer
#  armor      :integer
#  type       :string
#  rarity     :string
#  owner_id   :uuid
#  owner_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :power_armor do
    name {'Hard ' + Faker::Commerce.product_name}
    durability {Faker::Number.between(1, 100)}
    quality {Faker::Number.between(1, 100)}
    armor {Faker::Number.between(1, 100)}
    type {['Light', 'Medium', 'Heavy'].sample}
    rarity {['Rare', 'Common', 'Epic'].sample}

    owner {Robot.all.sample}
  end
end

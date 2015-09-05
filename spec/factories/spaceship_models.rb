# == Schema Information
#
# Table name: spaceship_models
#
#  id         :uuid             not null, primary key
#  name       :string
#  code       :string
#  speed      :integer
#  cargo      :integer
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :spaceship_model do
    name {'Spaceship ' + Faker::Commerce.product_name}
    code {Faker::Code.isbn}
    type {['Cruiser', 'Wasp', 'Destroyer', 'Cargo'].sample}

    cargo {Faker::Number.between(1234, 5551)}
    speed {Faker::Number.between(100, 1000)}
  end
end

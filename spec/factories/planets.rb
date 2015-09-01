# == Schema Information
#
# Table name: planets
#
#  id         :uuid             not null, primary key
#  name       :string
#  cords_x    :string
#  cords_y    :string
#  cords_z    :string
#  size       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :planet do
    name {'Planet ' + Faker::Commerce.product_name}
    cords_x {Faker::Number.between(-10000, 10000)}
    cords_y {Faker::Number.between(-10000, 10000)}
    cords_z {Faker::Number.between(-10000, 10000)}
    size {Faker::Number.between(50, 2000)}
  end
end

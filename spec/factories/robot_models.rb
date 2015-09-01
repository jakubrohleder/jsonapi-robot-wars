# == Schema Information
#
# Table name: robot_models
#
#  id         :uuid             not null, primary key
#  name       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :robot_model do
    name {'Robot ' + Faker::Commerce.product_name}
    code {Faker::Code.isbn}
  end
end

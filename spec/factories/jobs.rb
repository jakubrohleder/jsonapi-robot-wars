# == Schema Information
#
# Table name: jobs
#
#  id         :uuid             not null, primary key
#  name       :string
#  salary     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :job do
    name {Faker::Commerce.department}
    salary {Faker::Number.between(100, 100000)}
  end
end

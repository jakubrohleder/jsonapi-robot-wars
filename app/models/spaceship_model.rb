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

class SpaceshipModel < ActiveRecord::Base
  has_many :spaceships

  self.inheritance_column = :_type_disabled
end

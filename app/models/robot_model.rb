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

class RobotModel < ActiveRecord::Base
  has_many :robots

  validates :name, presence: true
  validates :code, presence: true
end

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

class Planet < ActiveRecord::Base
  has_many :locations

  validates :name, presence: true
  validates :cords_x, presence: true
  validates :cords_y, presence: true
  validates :cords_z, presence: true
  validates :size, presence: true
end

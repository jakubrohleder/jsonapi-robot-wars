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

class PowerArmor < ActiveRecord::Base
  belongs_to :owner, polymorphic: true

  validates :name, presence: true
  validates :durability, presence: true
  validates :quality, presence: true
  validates :armor, presence: true
  validates :type, presence: true
  validates :rarity, presence: true
end

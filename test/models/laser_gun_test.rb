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

require 'test_helper'

class LaserGunTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

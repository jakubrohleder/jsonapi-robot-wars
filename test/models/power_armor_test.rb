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

require 'test_helper'

class PowerArmorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

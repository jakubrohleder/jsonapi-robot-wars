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

require 'test_helper'

class PlanetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

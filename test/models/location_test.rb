# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  planet_id  :uuid
#  cords_x    :string
#  cords_y    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

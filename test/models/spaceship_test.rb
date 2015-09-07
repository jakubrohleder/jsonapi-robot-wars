# == Schema Information
#
# Table name: spaceships
#
#  id                 :uuid             not null, primary key
#  name               :string
#  durability         :integer
#  quality            :integer
#  pilot_id           :uuid
#  pilot_type         :string
#  spaceship_model_id :uuid
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class SpaceshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

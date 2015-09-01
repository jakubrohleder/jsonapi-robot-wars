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

require 'test_helper'

class SpaceshipModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

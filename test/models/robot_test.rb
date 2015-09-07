# == Schema Information
#
# Table name: robots
#
#  id                   :uuid             not null, primary key
#  name_first           :string
#  name_last            :string
#  creation_date        :date
#  job_id               :uuid
#  robot_model_id       :uuid
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

require 'test_helper'

class RobotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

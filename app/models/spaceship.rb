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

class Spaceship < ActiveRecord::Base
  belongs_to :pilot, polymorphic: true
  belongs_to :spaceship_model

  has_one :location, as: :entity, dependent: :destroy

  validates :name, presence: true
  validates :durability, presence: true
  validates :quality, presence: true

  def location_id
    self.location.id unless self.location.nil?
  end

  def location_id=(location_id)
  end
end

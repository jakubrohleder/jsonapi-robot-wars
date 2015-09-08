# == Schema Information
#
# Table name: locations
#
#  id          :uuid             not null, primary key
#  planet_id   :uuid
#  cords_x     :string
#  cords_y     :string
#  entity_id   :uuid
#  entity_type :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_locations_on_entity_id_and_entity_type  (entity_id,entity_type) UNIQUE
#

class Location < ActiveRecord::Base
  belongs_to :planet
  belongs_to :entity, polymorphic: true

  validates :cords_x, presence: true
  validates :cords_y, presence: true

  validates :planet, presence: true
  validates :entity, presence: true
  validates :entity_id, uniqueness: { scope: :entity_type }
end

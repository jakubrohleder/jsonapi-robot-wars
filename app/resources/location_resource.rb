class LocationResource < JSONAPI::Resource
  attributes :cords_x, :cords_y

  has_one :planet
  has_one :entity, polymorphic: true
end

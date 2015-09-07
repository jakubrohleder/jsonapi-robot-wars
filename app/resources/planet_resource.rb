class PlanetResource < JSONAPI::Resource
  has_many :locations

  attributes :name, :cords_x, :cords_y, :cords_z, :size
end
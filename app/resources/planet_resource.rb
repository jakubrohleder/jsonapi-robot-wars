class PlanetResource < JSONAPI::Resource
  attributes :name, :cords_x, :cords_y, :cords_z, :size

  has_many :locations

  filters :name, :cords_x, :cords_y, :cords_z, :size
end

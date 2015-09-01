class SpaceshipModelResource < JSONAPI::Resource
  attributes :name, :code, :speed, :cargo, :type

  has_many :spaceships
end
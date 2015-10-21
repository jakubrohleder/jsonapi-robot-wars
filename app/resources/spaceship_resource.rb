class SpaceshipResource < JSONAPI::Resource
  attributes :name, :durability, :quality

  has_one :spaceship_model
  has_one :pilot, polymorphic: true
  has_one :location

  filters :name, :durability, :quality
end

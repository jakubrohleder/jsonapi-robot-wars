class SpaceshipResource < JSONAPI::Resource
  has_one :spaceship_model
  has_one :pilot, polymorphic: true
  has_one :location

  attributes :name, :durability, :quality
end
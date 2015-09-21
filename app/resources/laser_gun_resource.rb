class LaserGunResource < JSONAPI::Resource
  has_one :owner, polymorphic: true

  attributes :name, :durability, :quality, :power, :type, :rarity
end

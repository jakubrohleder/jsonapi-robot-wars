class LaserGunResource < JSONAPI::Resource
  attributes :name, :durability, :quality, :power, :type, :rarity

  has_one :owner, polymorphic: true

  filters :name, :durability, :quality, :power, :type, :rarity
end

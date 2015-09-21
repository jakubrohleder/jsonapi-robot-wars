class PowerArmorResource < JSONAPI::Resource
  has_one :owner, polymorphic: true

  attributes :name, :durability, :quality, :armor, :type, :rarity
end

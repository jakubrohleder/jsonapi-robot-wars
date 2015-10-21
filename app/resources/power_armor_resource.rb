class PowerArmorResource < JSONAPI::Resource
  attributes :name, :durability, :quality, :armor, :type, :rarity

  has_one :owner, polymorphic: true

  filters :name, :durability, :quality, :armor, :type, :rarity
end

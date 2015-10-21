class RobotModelResource < JSONAPI::Resource
  attributes :name, :code

  has_many :robots

  filters :name, :code
end

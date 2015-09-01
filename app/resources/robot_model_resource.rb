class RobotModelResource < JSONAPI::Resource
  has_many :robots

  attributes :name, :code
end
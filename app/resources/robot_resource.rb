class RobotResource < JSONAPI::Resource
  attributes :name_first, :name_last, :creation_date, :picture_url

  has_many :laser_guns
  has_many :power_armors
  has_many :spaceships

  has_one :location
  has_one :robot_model
  has_one :job
end

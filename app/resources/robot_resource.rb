class RobotResource < JSONAPI::Resource
  attributes :name_first,  :name_last,  :creation_date

  has_one :items, as: :owner
  has_one :spaceships

  has_one :location
  has_one :origin, class_name: 'Location'
  has_one :robot_model
  has_one :job

end
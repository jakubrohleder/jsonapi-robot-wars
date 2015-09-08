# == Schema Information
#
# Table name: robots
#
#  id                   :uuid             not null, primary key
#  name_first           :string
#  name_last            :string
#  creation_date        :date
#  job_id               :uuid
#  robot_model_id       :uuid
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class Robot < ActiveRecord::Base
  has_many :laser_guns, as: :owner
  has_many :power_armors, as: :owner
  has_many :spaceships, as: :pilot

  has_one :location, as: :entity, dependent: :destroy

  belongs_to :robot_model
  belongs_to :job

  validates :name_first, presence: true
  validates :name_last, presence: true
  validates :creation_date, presence: true

  has_attached_file :picture,
    :styles => {
      :original => '350x350>',
      :medium => '200x200>',
      :thumb => '120x120>'
    },
    :default_url => lambda { |av| "http://robohash.org/#{av.instance.id}" }

  def picture_url
    self.picture.url
  end

  def picture_url=(picture_url)
  end

  def location_id
    self.location.id unless self.location.nil?
  end

  def location_id=(location_id)
  end
end

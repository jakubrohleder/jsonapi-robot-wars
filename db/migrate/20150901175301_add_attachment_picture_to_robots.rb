class AddAttachmentPictureToRobots < ActiveRecord::Migration
  def self.up
    change_table :robots do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :robots, :picture
  end
end

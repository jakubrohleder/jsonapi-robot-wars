class CreateLaserGuns < ActiveRecord::Migration
  def change
    create_table :laser_guns, id: :uuid do |t|
      t.string :name
      t.integer :durability
      t.integer :quality
      t.integer :power
      t.string :type
      t.string :rarity

      t.uuid :owner_id
      t.string :owner_type

      t.timestamps null: false
    end
  end
end

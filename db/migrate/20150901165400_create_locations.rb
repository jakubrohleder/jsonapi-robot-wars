class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations, id: :uuid do |t|
      t.uuid :planet_id
      t.string :cords_x
      t.string :cords_y

      t.timestamps null: false
    end
  end
end

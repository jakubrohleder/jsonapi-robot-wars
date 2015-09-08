class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations, id: :uuid do |t|
      t.uuid :planet_id
      t.string :cords_x
      t.string :cords_y

      t.uuid :entity_id
      t.string :entity_type

      t.timestamps null: false
    end

    add_index :locations, [:entity_id, :entity_type], unique: true
  end
end

class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships, id: :uuid do |t|
      t.string :name
      t.integer :durability
      t.integer :quality

      t.uuid :pilot_id
      t.string :pilot_type

      t.uuid :spaceship_model_id
      t.uuid :location_id

      t.timestamps null: false
    end
  end
end

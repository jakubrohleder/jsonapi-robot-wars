class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets, id: :uuid do |t|
      t.string :name
      t.string :cords_x
      t.string :cords_y
      t.string :cords_z
      t.integer :size

      t.timestamps null: false
    end
  end
end

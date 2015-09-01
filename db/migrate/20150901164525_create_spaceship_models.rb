class CreateSpaceshipModels < ActiveRecord::Migration
  def change
    create_table :spaceship_models, id: :uuid do |t|
      t.string :name
      t.string :code
      t.integer :speed
      t.integer :cargo
      t.string :type

      t.timestamps null: false
    end
  end
end

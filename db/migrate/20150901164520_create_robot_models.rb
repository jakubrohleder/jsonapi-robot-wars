class CreateRobotModels < ActiveRecord::Migration
  def change
    create_table :robot_models, id: :uuid do |t|
      t.string :name
      t.string :code

      t.timestamps null: false
    end
  end
end

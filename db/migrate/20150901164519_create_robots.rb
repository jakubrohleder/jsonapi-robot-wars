class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots, id: :uuid do |t|
      t.string :name_first
      t.string :name_last
      t.date :creation_date

      t.uuid :job_id
      t.uuid :robot_model_id
      t.uuid :origin_id
      t.uuid :location_id

      t.timestamps null: false
    end
  end
end

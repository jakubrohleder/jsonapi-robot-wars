class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs, id: :uuid do |t|
      t.string :name
      t.integer :salary

      t.timestamps null: false
    end
  end
end

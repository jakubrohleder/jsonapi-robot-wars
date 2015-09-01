class CreatePowerArmors < ActiveRecord::Migration
  def change
    create_table :power_armors, id: :uuid do |t|
      t.string :name
      t.integer :durability
      t.integer :quality
      t.integer :armor
      t.string :type
      t.string :rarity

      t.uuid :owner_id
      t.string :owner_type

      t.timestamps null: false
    end
  end
end

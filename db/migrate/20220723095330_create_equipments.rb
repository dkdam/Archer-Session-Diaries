class CreateEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipments do |t|
      t.text :bow
      t.text :arrow
    end
  end
end

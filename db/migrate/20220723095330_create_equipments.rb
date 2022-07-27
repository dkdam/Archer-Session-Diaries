class CreateEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipments do |t|
      t.text :bow
      t.text :bow_type
      t.text :bow_size
      t.text :draw_length
      t.text :draw_weight
      t.text :string
      t.text :arrow
      t.text :arrow_length
      t.text :arrow_spine
      t.text :arrow_weight
      t.text :tip_weight
      t.text :fletching
      t.text :nock
      t.text :description
    end
  end
end

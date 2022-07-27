class AddEquipmentIdToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :equipment_id, :integer
  end
end

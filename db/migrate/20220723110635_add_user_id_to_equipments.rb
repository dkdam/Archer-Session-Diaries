class AddUserIdToEquipments < ActiveRecord::Migration[5.2]
  def change
    add_column :equipments, :user_id, :integer
  end
end

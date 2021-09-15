class ChangePhoneToString < ActiveRecord::Migration[6.1]
  def change
    remove_column :volunteers, :phone, :integer
    add_column :volunteers, :phone, :string
  end
end

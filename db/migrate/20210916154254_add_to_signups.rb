class AddToSignups < ActiveRecord::Migration[6.1]
  def change
    add_column :volunteers, :opportunity_id, :integer
  end
end

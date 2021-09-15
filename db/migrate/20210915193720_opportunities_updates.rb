class OpportunitiesUpdates < ActiveRecord::Migration[6.1]
  def change
    remove_column :opportunities, :volunteer_id, :integer
    remove_column :opportunities, :category_id, :integer
    add_column :opportunities, :category, :string
  end
end

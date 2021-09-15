class UpdateOpportunityTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :opportunities, :maxvolunteers, :integer
    add_column :opportunities, :org_name, :string
    add_column :opportunities, :volunteer_id, :integer

  end
end

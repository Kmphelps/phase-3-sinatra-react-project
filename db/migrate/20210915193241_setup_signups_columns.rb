class SetupSignupsColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :signups, :name, :string
    add_column :signups, :volunteer_id, :integer
    add_column :signups, :opportunity_id, :integer
  end
end

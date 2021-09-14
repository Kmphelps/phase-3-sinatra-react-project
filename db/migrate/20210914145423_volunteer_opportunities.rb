class VolunteerOpportunities < ActiveRecord::Migration[6.1]
  def change
    create_table :opportunities do |t|
      t.string :title
      t.datetime :datetime
      t.string :location
      t.string :description
      t.string :img
      t.integer :maxvolunteers
      t.integer :category_id
    end
  end
end

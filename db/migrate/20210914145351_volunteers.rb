class Volunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :phone
    end
  end
end

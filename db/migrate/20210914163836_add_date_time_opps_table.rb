class AddDateTimeOppsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :opportunities, :date, :date
    add_column :opportunities, :time, :time
  end
end

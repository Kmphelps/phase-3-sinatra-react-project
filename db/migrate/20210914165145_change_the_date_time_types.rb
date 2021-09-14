class ChangeTheDateTimeTypes < ActiveRecord::Migration[6.1]
  def change
    remove_column :opportunities, :date, :date
    remove_column :opportunities, :time, :time
    add_column :opportunities, :date, :string
    add_column :opportunities, :time, :string
  end
end

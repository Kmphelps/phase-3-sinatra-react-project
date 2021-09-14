class SplitDateTimeOppsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :opportunities, :datetime, :datetime
  end
end

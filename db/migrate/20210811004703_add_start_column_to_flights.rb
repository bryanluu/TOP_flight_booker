class AddStartColumnToFlights < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :start, :datetime
  end
end

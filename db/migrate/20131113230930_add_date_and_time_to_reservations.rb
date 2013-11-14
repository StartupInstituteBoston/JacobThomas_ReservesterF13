class AddDateAndTimeToReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :datetime, :datetime 
    add_column :reservations, :datetime, :string
  end
end

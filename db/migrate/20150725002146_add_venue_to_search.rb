class AddVenueToSearch < ActiveRecord::Migration
  def change
  	add_column :searches, :venue, :string 
  end
end

class AddMediumToSearch < ActiveRecord::Migration
  def change
  	add_column :searches, :medium, :string
  end
end

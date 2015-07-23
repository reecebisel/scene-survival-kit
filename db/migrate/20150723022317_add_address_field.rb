class AddAddressField < ActiveRecord::Migration
  def change
		add_column :addresses, :whole_address, :string
  end
end

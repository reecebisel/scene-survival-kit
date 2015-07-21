class Venue < ActiveRecord::Base
	has_one :address
	belongs_to :event
	belongs_to :venue_rep
end

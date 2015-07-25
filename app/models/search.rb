class Search < ActiveRecord::Base
	def search_profile
		profiles = Profile.all
		profile = profiles.where(["name LIKE ? OR bio LIKE ?", "%#{keywords}%", "%#{keywords}%"]) if keywords.present?
		
		#profile by musician attribute
		profile = Profile.joins(:musician).where(:musicians => { :instrument => "#{instrument}" }) if instrument.present?
		profile = Profile.joins(:musician).where(:musicians => { :genre => "#{genre}" }) if genre.present?

		#profile by visual artist attribute
		profile = Profile.joins(:visual_artist).where(:visual_artists => { :medium => "#{medium}" }) if medium.present?

		#profile by venue rep attribute
		profile = Profile.joins(:venue_rep).where(:venue_reps => { :venue => "#{venue}" }) if venue.present?

		#find by address
		return profile
	end

# 	def search_address
# 		musician = Musician.joins(:addresses).where(addresses: {"zip LIKE ?", "%#{zip}%"}) if zip.present?
		# musician = Musician.joins(:addresses).where(addresses: {"state LIKE ?", "%#{state}%"}) if zip.present?
		# venue_rep = VenueRep.joins(:addresses).where(addresses: {"zip LIKE ?", "%#{zip}%"}) if zip.present?
		# venue_rep = VenueRep.joins(:addresses).where(addresses: {"state LIKE ?", "%#{state}%"}) if zip.present?
		# visual_artist = VisualArtist.joins(:addresses).where(addresses: {"zip LIKE ?", "%#{zip}%"}) if zip.present?
		# visual_artist = VisualArtist.joins(:addresses).where(addresses: {"state LIKE ?", "%#{state}%"}) if zip.present?
	# end
end 
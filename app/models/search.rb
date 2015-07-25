class Search < ActiveRecord::Base
	def search_profile
		# keyword
		profile = Profile.where(["name LIKE ? OR bio LIKE ?", "%#{keywords}%", "%#{keywords}%"]) if keywords.present?
		
		# profile by musician attribute
		profile = Profile.joins(:musician).where(:musicians => { :instrument => "#{instrument}" }) if instrument.present?
		profile = Profile.joins(:musician).where(:musicians => { :genre => "#{genre}" }) if genre.present?

		# profile by visual artist attribute
		profile = Profile.joins(:visual_artist).where(:visual_artists => { :medium => "#{medium}" }) if medium.present?

		# profile by venue rep attribute
		profile = Profile.joins(:venue_rep).where(:venue_reps => { :venue => "#{venue}" }) if venue.present?

		#find by address
		# profile = Profile.joins(:musician).joins(:address).where(:addresses => { :zip => "#{zip}" }) if zip.present?
		# profile = Profile.joins(:musician).joins(:address).where(:addresses => { :state => "#{state}" }) if state.present?
		# profile = Profile.joins(:visual_artist).joins(:address).where(:addresses => { :zip => "#{zip}" }) if zip.present?
		# profile = Profile.joins(:visual_artist).joins(:address).where(:addresses => { :state => "#{state}" }) if state.present?
		# profile = Profile.joins(:venue_rep).joins(:address).where(:addresses => { :zip => "#{zip}" }) if zip.present?
		# profile = Profile.joins(:venue_rep).joins(:address).where(:addresses => { :state => "#{state}" }) if state.present?
		return profile
	end
end 
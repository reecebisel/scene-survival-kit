module ApplicationHelper

  def find_parent_profile(profile_id)
    Profile.find(profile_id)
  end

  def random_profile
    Profile.all.sample
  end

  def profile_type(profile)
    if Profile.musician.any?
      'Musician'
    elsif Profile.venue_rep.any?
      'Venue Rep.'
    elsif Profile.visual_artist.any?
      'Visual Artist'
    else
      ' '
    end
  end
end

module ApplicationHelper

  def find_parent_profile(profile_id)
    Profile.find(profile_id)
  end
end

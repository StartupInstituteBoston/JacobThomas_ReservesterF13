module UsersHelper

  def owner?
    if user_signed_in? && current_user.id == @restaurant.user_id 
      return true
    end
    return false
  end

end

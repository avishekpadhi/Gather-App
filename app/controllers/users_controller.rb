class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
  end

  def current_user_home
    if user_signed_in? 
      redirect_to current_user
    else
      redirect_to new_user_session_path
    end
  end

end

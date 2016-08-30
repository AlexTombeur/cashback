class ProfileController < ApplicationController
  before_action :find_user

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

private
  def find_user
    @user = current_user
  end
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :photo)
  end
end


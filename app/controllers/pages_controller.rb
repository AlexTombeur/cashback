class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in?
      return redirect_to profile_path
    end
    # else render :home
  end
end

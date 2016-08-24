class CorporationsController < ApplicationController

before_action :find_corporation, only: [:edit, :update]

  def new
    @corporation = Corporation.new
  end

  def create
    @corporation = Corporation.new(corporation_params)
      if @corporation.save
        current_user.update!(corporation: @corporation)
        redirect_to profile_path
      else
        render :new
      end
  end

  def edit
  end

  def update
      if @corporation.update(corporation_params)
        redirect_to profile_path
      else
        render :edit
      end
  end

  private

  def corporation_params
    params.require(:corporation).permit(:name, :photo)
  end

  def find_corporation
    @corporation = Corporation.find(params[:id])
  end

end

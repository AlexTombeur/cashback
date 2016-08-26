class Users::InvitationsController < Devise::InvitationsController

  def invite_resource(&block)
    user_params = invite_params
    user_params[:manager] = current_inviter
    user_params[:corporation] = current_inviter.corporation

    resource_class.invite!(user_params, current_inviter, &block)
  end

end



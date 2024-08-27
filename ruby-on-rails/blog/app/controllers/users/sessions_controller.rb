class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # Override the create action to add custom logic
  def create
    # resource = User.find_by(email: params[:user][:email])
    # if resource && resource.valid_password?(params[:user][:password]) && resource.organization_id == params[:user][:organization_id].to_i
    #   sign_in(resource_name, resource)
    #   set_flash_message!(:notice, :signed_in)
    #   respond_with resource, location: after_sign_in_path_for(resource)
    # else
    #   flash[:alert] = "Invalid email, password, or organization"
    #   render :new
    # end
    super
  end

  private

  # Permit additional parameters for sign-in
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:organization_id])
  end
end

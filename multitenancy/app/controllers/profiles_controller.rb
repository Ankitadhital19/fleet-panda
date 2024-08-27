class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  def show
    @user
  end

  def edit
    @user = current_user
  end

  def update
    if @user.update(profile_params)
      redirect_to profile_path, notice: "Profile was successfully updated."
    else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :bio, :avatar)
  end
end

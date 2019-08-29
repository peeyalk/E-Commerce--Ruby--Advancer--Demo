class RegistrationsController < Device::RegistrationsController


  # protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def sign_up_params
    param.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end


end
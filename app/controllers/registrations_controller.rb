class RegistrationsController < Device::RegistrationsController


  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # private

  # def sign_up_paras
  #   param.require(:user).permit(:name, :email, :password, :password_confirmation)
  # end

  # def account_update_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  # end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation)}

      devise_parameter_sanitizer.permit(:account_update_params) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password)}
    end
  end

end
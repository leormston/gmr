class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:last_name,:email, :alias, :password, :password_confirmation) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:last_name,:email, :alias, :password, :password_confirmation) }
    end

    def authorize_moderator
      redirect_to home_index_path, status: 401 unless current_user.securecode.to_s == current_user.user_key.to_s
      #redirects to previous page
    end

    def authorize_admin
      redirect_to home_index_path, status: 401 unless current_user.admin == current_user.admin_key
    end

    def check_user
      redirect_to home_index_path, status: 401, notice: "You are not authorized to access that page" unless @user == current_user
    end

end

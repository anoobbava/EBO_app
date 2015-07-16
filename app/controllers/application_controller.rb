class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # prepend_before_filter :authenticate_scope!, only: [:edit, :update, :destroy]
  before_filter :configure_sanitized_params, if: :devise_controller?
  
  def configure_sanitized_params
# def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:firstname, :designation_id ,:middlename, :lastname, :email, :loginid, :password, :password_confirmation, :empid, :dob, :timezone, :doj,  :gender, :education, :comments, :locked, :deactivated, :reason, :phone, :image, :deactivated_date)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:firstname, :designation_id ,:middlename, :lastname, :email, :loginid,:current_password, :password, :password_confirmation, :empid, :dob, :timezone, :doj,  :gender, :education, :comments, :locked, :deactivated, :reason, :phone, :image, :deactivated_date)}
    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:firstname, :designation_id ,:middlename, :lastname, :email, :loginid,:current_password, :password, :password_confirmation, :empid, :dob, :timezone, :doj,  :gender, :education, :comments, :locked, :deactivated, :reason, :phone, :image, :deactivated_date)}
  end

  protected
  def after_sign_in_path_for(resource)
  # stored_location_for(resource) || welcome_path
         p "ssssssssssssssssssssssssssssssssssssssssssssssssssss"

    admin_user_path(resource)

    # admin_user_path
  end
end
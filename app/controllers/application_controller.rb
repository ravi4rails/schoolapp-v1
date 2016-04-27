class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  def after_sign_in_path_for(resource)
    if resource.role == "Admin"
      '/admin_dashboard'
    elsif resource.role == "Employee"
      '/employee_dashboard'
    elsif resource.role == "Student"
      '/student_dashboard'
    end
  end

end

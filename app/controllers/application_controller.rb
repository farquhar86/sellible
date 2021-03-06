class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper
  include SalesHelper
  include ProductsHelper
  

  def require_login
  	if !current_superuser
  		redirect_to root_path
  	end
  end
end

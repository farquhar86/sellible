class SessionsController < ApplicationController
  def new
  	@superuser = Superuser.new
  	render :new
  end

  def create
  	@superuser = Superuser.confirm(superuser_params)
    
  	if @superuser
  		login(@superuser)
  		redirect_to "/sales" 
  	else
  		redirect_to "/login", flash: { success: "Please try your login info again" }
  	end
  end

  def destroy
    logout
    redirect_to "/login"
  end

  private
  def superuser_params
  	params.require(:superuser).permit(:email, :password)
  end
end

module SessionsHelper
	def login(superuser)
        session[:superuser_id] = superuser.id
        @current_superuser = superuser
    end

    def current_superuser
        @current_superuser ||= Superuser.find_by_id(session[:superuser_id])
    end

    def logged_in? 
        if current_superuser == nil
            
        end
    end

    def signed_in?
        if current_superuser == nil
            return false
        else
            return true
        end
    end

    def correct_superuser(post)
        if @current_superuser.id == post.superuser_id
            return true
        else
            return false
        end
    end

    def logout
        @current_superuser = session[:superuser_id]= nil
    end
    
    def if_right_superuser
      @current_superuser = exactsuperuser
      if @current_superuser = !@current_superuser
        redirect_to "/login"
      end  
    end
end

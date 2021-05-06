
class Helpers

    def current_user(session)
       @user = User.find_by_id(session[:user_id])
       
    end

    def is_logged_in?(session)
     
        if !!current_user(session[:user_id])
            true
        else
            false
        end
    end
end
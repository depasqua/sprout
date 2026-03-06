class SessionsController < ApplicationController
    
    def new

    end

    def create
        auth = request.env['omniauth.auth']
        email = auth.info.email
        if email.ends_with?('@childfocusnj.org')
            session[:user_email] = email
            redirect_to volunteers_path
        else
            flash[:alert] = "Must use a Child Focus NJ associated email"
            redirect_to login_path
        end
    end
end

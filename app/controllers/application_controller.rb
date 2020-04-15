class ApplicationController < ActionController::Base
    def sign_in
        session[:id] = @user.id
    end
end

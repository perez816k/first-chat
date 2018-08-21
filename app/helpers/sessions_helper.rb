module SessionsHelper
    def log_in(name)
        session[:user_name] = name
    end

    def logged_in?
        !session[:user_name].nil?
    end
end

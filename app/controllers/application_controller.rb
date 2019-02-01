class ApplicationController < ActionController::Base
    include DeviseWhitelist
    
    before_action :set_source
    
    def set_source
        session[:q] = params[:q] if params[:q]
    end
end

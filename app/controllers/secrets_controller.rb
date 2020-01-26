class SecretsController < ApplicationController
    def show
        if !current_user
            redirect_to(controller: 'sessions', action: 'new')
        end
    end


    def logged_in
        return head(:forbidden) unless session.inlcude? :name
        
        binding.pry
        
    end
end

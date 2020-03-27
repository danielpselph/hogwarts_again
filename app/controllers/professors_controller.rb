class ProfessorsController < ApplicationController

    def index
        @professors = Professor.all
    end

    def show
        # require 'pry', 
        # binding.pry
        
    end
    
    
end
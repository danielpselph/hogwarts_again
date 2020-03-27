class ProfessorsController < ApplicationController

    def index
        @professor = Professor.all
    end
    
end
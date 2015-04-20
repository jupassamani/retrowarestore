class SearchController < ApplicationController
    def index
        
    end
    def result
        @games = Game.where('title like ?', "%"+params[:search]+"%")    
    end
end

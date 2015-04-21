# Search Controller
class SearchController < ApplicationController
  def result
    @games = Game.where('title like ?', '%' + params[:search] + '%')
  end
end

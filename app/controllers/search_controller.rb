class SearchController < ApplicationController
  def index
    nation = params[:nation].sub('_', '+')
    @characters = SearchFacade.get_characters(nation)
  end
end
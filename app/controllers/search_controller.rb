class SearchController < ApplicationController
  def index
    nation = params[:nation].sub('_', '+')
    conn = Faraday.new("https://last-airbender-api.herokuapp.com")
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    @characters = JSON.parse(response.body, symbolize_names: true)
  end
end
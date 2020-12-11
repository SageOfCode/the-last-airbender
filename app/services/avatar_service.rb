class AvatarService
  class << self 
    def get_results(search)
      conn = Faraday.new("https://last-airbender-api.herokuapp.com")
      response = conn.get("/api/v1/characters?affiliation=#{search}")
      json = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
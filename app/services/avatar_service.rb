class AvatarService
  class << self 
    def get_results(search)
      response = conn.get("/api/v1/characters?affiliation=#{search}")
      parse_it(response)
    end

    private 

    def conn
      Faraday.new("https://last-airbender-api.herokuapp.com")
    end

    def parse_it(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
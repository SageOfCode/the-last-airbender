class SearchFacade
  class << self
    def get_characters(search)
      json = AvatarService.get_results(search)
      @characters = json.map do |character|
        Character.new(character)
      end
    end
  end 
end 
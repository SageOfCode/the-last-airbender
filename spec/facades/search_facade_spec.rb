require 'rails_helper'

describe SearchFacade do
  context "class methods" do
    context ".get_characters" do
      it "returns character data" do
        search = SearchFacade.get_characters("fire+nation")
        expect(search).to be_a(Array)
        expect(search.count).to eq(20)
        expect(search.first).to be_a(Character)
      end
    end
  end
end
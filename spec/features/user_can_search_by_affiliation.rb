require 'rails_helper'

RSpec.describe "As a user" do 
  describe "When I search for a characters by nation," do 
    it 'And click "Search For Members", I see results' do

        visit root_path

        select "Air Nomads", :from => "nation"
        
        click_button "Search For Members"
       
        expect(current_path).to eq(search_path)

        expect(page).to have_content("Appa")  
    end
  end
end
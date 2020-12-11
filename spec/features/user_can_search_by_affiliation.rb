require 'rails_helper'

RSpec.describe "As a user" do 
  describe "When I search for a characters by nation," do 
    it 'And click "Search For Members", I see results' do

        visit root_path

        select "Fire Nation", :from => "nation"
        
        click_button "Search For Members"
save_and_open_page
        expect(current_path).to eq(search_path)

        expect(page).to have_content("Displaying 20 Nation Members:")  
        expect(page).to have_content("Name: Chan")  
        expect(page).to have_content("Allies: Ozai")  
        expect(page).to have_content("Enemies: Earth Kingdom")  
        expect(page).to have_content("Affiliation: Fire Nation Navy")  
    end
  end
end
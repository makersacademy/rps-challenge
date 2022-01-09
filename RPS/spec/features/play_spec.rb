require 'spec_helper'

feature "playing RPS" do
    before do
        visit('/')
        fill_in :player_1, with: 'Vanessa'
        fill_in :player_2, with: 'Silvia' 
        click_button 'Submit'
    end

    scenario "marketeer chooses either r,p,s" do
      expect(page).to have_button "Rock"
      expect(page).to have_button "Paper"
      expect(page).to have_button "Scissors"
    end


    scenario "choose a shape" do
      click_button "Rock"
      expect(page).to have_content "You chose Rock!"
    end
end
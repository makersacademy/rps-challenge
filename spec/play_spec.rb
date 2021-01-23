require 'spec_helper'


feature 'playing a game' do 
    before do 
        visit ('/')
        fill_in :player_name, with: 'Meg'
        click_button 'Submit'
        expect(page).to have_content 'Meg'
    end
    scenario 'I want to see the different options' do 
       expect(page).to have_button 'Rock'
       expect(page).to have_button 'Paper'
       expect(page).to have_button 'Scissors'
    end 

    scenario "i want to be able to choose an option" do 
        click_button "Rock"
        expect(page).to have_content "You chose Rock!"
    end 
end 

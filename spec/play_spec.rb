require 'spec_helper'


feature 'playing a game' do 
    before do 
        visit ('/')
        fill_in :player_name, with: 'Meg'
        click_button 'Submit'
        expect(page).to have_content 'Meg'
    end
    scenario 'I want to see the different options' do 
       expect(page).to have_content 'Rock'
       expect(page).to have_content 'Paper'
       expect(page).to have_content 'Scissors'
    end 
end 

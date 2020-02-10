require 'spec_helper'
#the marketeer should be able to enter their name before the game
feature 'registration' do
    scenario 'register and see the name' do
        visit '/'
        fill_in :player_1_name, with: 'Dave'
        click_button 'Submit'
        expect(page).to have_content('Dave')
    end
end


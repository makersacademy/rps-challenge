require 'spec_helper'

feature 'Making a choice' do
    before do 
        visit '/'
        fill_in :player_1_name, with: 'Dave'
        click_button 'Submit'
    end 
    scenario 'see the different options' do
        expect(page).to have_content 'Time to make a choice: Rock, Paper or Scissors'
    end
end
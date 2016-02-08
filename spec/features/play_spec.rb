require_relative '../spec_helper'

 feature 'Play'do
   scenario 'choose an option'do
   visit('/')
   fill_in :player_name, with: 'Bob'
   click_button 'GO!'
   choose('rock')
   click_button('Submit')
   expect(page).to have_content('You chose rock')
   end
 end

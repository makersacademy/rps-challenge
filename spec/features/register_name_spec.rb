require 'spec_helper'

feature 'Register name' do
 scenario 'name entered' do
   visit('/')
   fill_in :player_1_name, with: 'Chet'
   click_button "3 2 1 Draw!"
   expect(page).to have_content "It's time Chet"
 end
end

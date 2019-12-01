 require 'spec_helper.rb'

 feature 'sign up player name' do

   scenario 'sign up and see name' do
     visit('/')
     fill_in :player_name, with: 'Hisham'
     click_button ('Submit')
     expect(page).to have_content('Hisham')
   end
 end

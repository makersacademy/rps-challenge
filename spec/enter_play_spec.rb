require 'rspec'
require 'spec_helper'
require './app.rb'


describe 'Add Player Message' do

 def app
   RPS
 end

 feature "Entering player details" do
   scenario "Player is Kate" do

     fill_in 'player_name', with: 'Kate'
     click_button( 'Submit!')
     visit '/add_player'
     expect(page).to have_content("Player is Kate")
   end
 end
end

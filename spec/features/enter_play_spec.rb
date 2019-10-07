require 'rspec'
require 'spec_helper'
require './app.rb'


describe 'Add Player Message' do

 def app
   RPS
 end

 feature "Entering player details" do
   scenario "Player name is Charlie Chaplin" do
     visit '/'
     fill_in 'user_name', with: 'Charlie Chaplin'
     click_button( 'Press Enter When Ready')
     expect(page).to have_content("Welcome to the Game Charlie Chaplin Please choose your weapon Paper Scissors")
   end
 end
end

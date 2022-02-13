require 'spec_helper.rb'

def sign_in_and_play
  visit ('/')
    fill_in :player_name, with: "Charlotte"
    click_button "Enter Name"
end
Resolving dependencies...
require "spec_helper.rb"

def sign_in_and_play
  visit("/")
  fill_in :"player_1_name", with: "Charlie"
  fill_in :"player_2_name", with: "Gary"
  click_button "Submit"
end

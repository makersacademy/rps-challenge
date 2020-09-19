require "spec_helper.rb"

def sign_in_and_play
  visit("/")
  fill_in :"player_one", with: "Charlotte"
  click_button "Submit"
end

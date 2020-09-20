require "spec_helper.rb"

def sign_in_and_play
  visit("/")
  expect(page).to have_content "Rock - Paper - Scissors"
  fill_in :player_one, with: "Charlotte"
  click_button "Submit"
end

def sign_in_and_play_second
  visit("/")
  expect(page).to have_content "Rock - Paper - Scissors"
  fill_in :player_one, with: "Johan"
  click_button "Submit"
end

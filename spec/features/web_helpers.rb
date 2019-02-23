def sign_in_and_play
  visit('/')
  fill_in :marketeer1, with: "Mittens"
  click_button "Submit"
end

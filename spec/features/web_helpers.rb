def sign_in_and_play
  visit('/')

  fill_in :player, with: "Ellie"
  click_button "Play"
end

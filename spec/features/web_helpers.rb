def sign_in_and_play
  visit('/')
  fill_in :player, with: "Agata"
  click_button "PLAY"
end

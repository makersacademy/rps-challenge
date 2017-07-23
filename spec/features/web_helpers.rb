def sign_in_and_play(player)
  visit('/')
  fill_in :player_name, with: (player)
  click_button "Play"
end

def begin_single_player_game
  visit('/')
  click_button "single_player"
  fill_in :player_name, with: 'Dave'
  click_button "Submit"
end

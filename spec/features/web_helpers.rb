def enter_name_and_begin_game
  visit('/')
  fill_in :player_name, with: 'Dave'
  click_button "Submit"
end

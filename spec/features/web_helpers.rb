def enter_name_and_start_game
  visit('/')
  fill_in :player_1_name, with: 'Halloumi'
  click_button 'Start game!'
end

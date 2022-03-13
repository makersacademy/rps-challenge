def start_game_with_name
  visit('/')
  fill_in 'player_name', with: 'James'
  click_on 'Submit'
end
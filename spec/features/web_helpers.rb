def select_bot
  visit '/'
  click_button 'Bot'
end

def select_live_opponent
  visit '/'
  click_button 'Marketing Colleague'
end

def enter_player_click_choose_game
  fill_in :marketer_1, with: 'Ollie'
  click_button 'Choose Game'
end

def enter_players_click_choose_game
  fill_in :marketer_1, with: 'Ollie'
  fill_in :marketer_2, with: 'Dave'
  click_button 'Choose Game'
end

def select_rps_game_select_rock
  click_button 'Rock Paper Scissors'
  click_button 'Rock'
end

def sign_in_and_play
  visit '/'
  fill_in 'Player_1', with: "Zeshan"
  click_button "Submit name"
end

def two_player_log_in_page
  visit '/'
  click_button "Play two player"
end

def two_player_sign_in
  visit '/'
  click_button "Play two player"
  fill_in 'Player_1', with: "Zeshan"
  fill_in 'Player_2', with: "Batman"
  click_button "Submit names"
end

def play_one_player_game
  visit '/'
  fill_in 'Player_1', with: "Zeshan"
  click_button "Submit name"
  click_button "Rock"
end

def play_two_player_game
  two_player_sign_in
  click_button "Rock"
  click_button "Scissors"
end

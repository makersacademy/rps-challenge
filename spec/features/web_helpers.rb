def sign_in_one_player
  visit "/"
  fill_in "player_1_name", with: "Spock"
  click_button "Energize!"
end

def sign_in_two_players
  visit "/"
  fill_in "player_1_name", with: "Spock"
  fill_in "player_2_name", with: "Kirk"
  click_button "Energize!"
end

def weapons_chosen
  sign_in_two_players
  select('Rock', from: 'player_1_weapon')
  select('Scissors', from: 'player_2_weapon')
  click_button "Fire!"
end

def weapons_player_and_bot
  sign_in_one_player
  select('Rock', from: 'player_1_weapon')
  click_button "Fire!"
end

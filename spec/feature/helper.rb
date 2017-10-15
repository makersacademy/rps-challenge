def sign_up_players_one_computer
  visit '/'
  fill_in :player_1, with: 'Austin'
  within('#player_1') { choose('player_1_human') }
  fill_in :player_2, with: 'Sheldon'
  within('#player_2') { choose('player_2_computer') }
  click_button 'Play'
end

def sign_up_players
  visit '/'
  fill_in :player_1, with: 'Austin'
  within('#player_1') { choose('player_1_human') }
  fill_in :player_2, with: 'Rick'
  within('#player_2') { choose('player_2_human') }
  click_button 'Play'
end
def sign_in
  visit '/'
  fill_in :player_1_name, with: 'Sam'
  click_button 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Sam'
  click_button 'Submit'
  visit '/play'
end

def sigin_in_as_sam
  visit '/'
  fill_in :player_1_name, with: 'Sam'
  click_button 'Submit'
end

def sign_in_with_two_players
  visit '/'
  fill_in :player_1_name, with: 'Rebecca'
  fill_in :player_2_name, with: 'Emma'
  click_button 'Submit'
end

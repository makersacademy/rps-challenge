def sign_in
  visit '/'
  fill_in :player_name, with: 'Dave'
  click_button 'BATTLE!!!'
end

def play_a_round
  click_button 'ROCK'
  click_button 'NEXT ROUND'
end

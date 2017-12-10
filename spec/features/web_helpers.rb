def sign_in_and_play_solo
  visit '/'
  click_button 'Play!'
  fill_in :player_name, with: 'Player'
  click_on 'Submit'
end

def sign_in_and_play
  visit '/'
  fill_in :p_name, with: 'Player'
  click_button 'Submit'
end

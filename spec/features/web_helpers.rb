def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Riya'
  click_button 'Go'
end

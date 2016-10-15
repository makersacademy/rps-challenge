def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Felix'
  click_button 'GO!'
end

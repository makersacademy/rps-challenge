def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Bernard'
  click_button 'Play'
end

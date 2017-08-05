def sign_in(player)
  visit('/')
  fill_in :player_name, with: player
  click_button 'play'
end

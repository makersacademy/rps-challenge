def register_and_play
  visit('/')
  fill_in(:player_name, with: 'Tim')
  click_button('Play')
end
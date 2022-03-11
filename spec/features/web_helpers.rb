def start_play
  visit('/')
  fill_in('player_name', with: 'Snowman')
  click_button('Play')
end

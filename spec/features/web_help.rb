def named_player
  visit('/')
  visit('/')
  fill_in('player_name', with: 'Edward')
  click_button('Play!')
end

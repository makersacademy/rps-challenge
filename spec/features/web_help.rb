def named_player
  visit('/')
  fill_in('player_name', with: 'Edward')
  click_button('Play!')
end

def one_game_later
  named_player
  choose('r')
  click_button('submit')
end

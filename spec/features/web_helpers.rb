def single_player_sign_in_and_play
  visit('/')
  click_button('single-player')
  fill_in('name', with: 'John')
  click_button('play')
end

def multi_player_sign_in_and_play
  visit('/')
  click_button('multi-player')
  fill_in('p1name', with: 'John')
  fill_in('p2name', with: 'Smith')
  click_button('play')
end

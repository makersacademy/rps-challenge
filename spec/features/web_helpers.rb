def sign_in_and_play
  visit '/'
  click_button('Single-Player')
  fill_in('player_name', with: 'Mephistopheles')
  click_button('Submit')
end

def multiplayer_play
  visit '/'
  click_button('Multiplayer')
  fill_in('player_name', with: 'Mephistopheles')
  fill_in('player_2_name', with: 'Faust')
  click_button('Submit')
end

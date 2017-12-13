def sign_in_and_play
  visit '/'
  fill_in :player, with: "Allan"
  click_button('Play!')
end

def multi_sign_in_and_play
  visit '/'
  click_link('multiplayer-page')
  fill_in :player1, with: "Allan"
  fill_in :player2, with: "Timothy"
  click_button('Play!')
end

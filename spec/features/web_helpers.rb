def single_sign_in_and_play
  visit ('/')
  click_button('Single Player')
  fill_in :name, with: "Bob"
  click_button('Play!')
end

def multi_sign_in_and_play
  visit ('/')
  click_button('Multiplayer')
  fill_in :player_1, with: "Bob"
  fill_in :player_2, with: "Basil"
  click_button('Play!')
end

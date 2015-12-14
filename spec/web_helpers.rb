def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Ed'
  click_button('Submit')
end

def multi_play_sign_in
  visit('/')
  fill_in :player_1, with: 'Ed'
  fill_in :player_2, with: 'Hayley'
  click_button('Submit')
end

def play_a_round
  sign_in_and_play
  click_button('Rock')
  click_button('Outcome')
  click_button('Play again')
end

def play_3_rounds
  3.times do
    click_button('Rock')
    click_button('Outcome')
    click_button('Play again')
  end
end

def play_3_multiplayer_rounds
  3.times do
    click_button('Paper')
    click_button('Hayley\'s go')
    click_button('Scissors')
    click_button('Outcome')
    click_button('Play again')
  end
end

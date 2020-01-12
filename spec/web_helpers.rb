def sign_in_and_play
  visit("/")
  click_button('Single Player')
  fill_in(:name_1, with: "Chris")
  click_button('Start Game!')
end

def sign_in_and_win
  sign_in_and_play
  srand(7) #returns sample value of move 5
  choose('lizard')
  click_button('Play Move!')
end

def sign_in_and_play_multiplayer
  visit("/")
  click_button('Multiplayer')
  fill_in(:name_1, with: "Chris")
  fill_in(:name_2, with: "James")
  click_button('Start Game!')
end

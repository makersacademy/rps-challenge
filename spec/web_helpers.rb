def play_singleplayer
  visit('/')
  choose('Single Player')
  fill_in(:name_1, with: 'Chris')
  click_button('Play Game!')
end

def play_multiplayer
  visit('/')
  choose('Multiplayer')
  fill_in(:name_1, with: 'Chris')
  fill_in(:name_2, with: 'James')
  click_button('Play Game!')
end

def win_singleplayer
  play_singleplayer
  srand(7) #returns sample value of move 5
  choose('lizard')
  click_button('Play Move!')
end

def lose_singleplayer
  play_singleplayer
  srand(7) #returns sample value of move 5
  choose('scissors')
  click_button('Play Move!')
end

def draw_singleplayer
  play_singleplayer
  srand(7) #returns sample value of move 5
  choose('spock')
  click_button('Play Move!')
end

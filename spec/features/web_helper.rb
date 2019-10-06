def play_single
  visit('/')
  click_button('Single Player')
  fill_in :player1, with: 'Sid'
  click_button('Submit')
end

def player1_wins
  choose(option: "Rock")
  allow_any_instance_of(Computer).to receive(:weapon).and_return('Scissors')
  click_button('Play')
  click_button('Next Round')
end

def player2_wins
  choose(option: "Rock")
  allow_any_instance_of(Computer).to receive(:weapon).and_return('Paper')
  click_button('Play')
  click_button('Next Round')
end

def draw
  choose(option: "Rock")
  allow_any_instance_of(Computer).to receive(:weapon).and_return('Rock')
  click_button('Play')
  click_button('Next Round')
end

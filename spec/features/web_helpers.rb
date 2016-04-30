def one_player_mode
	visit('/')
	choose('one')
	click_button 'Next'
	fill_in :player_1_name, with: 'Player1'
	click_button 'Start'
end

def two_players_mode
	visit('/')
	choose('two')
	click_button 'Next'
	fill_in :player_1_name, with: 'Player1'
	fill_in :player_2_name, with: 'Player2'
  click_button 'Start'
end

def first_turn_one_player
  allow(Kernel).to receive(:rand).and_return(0)
  choose('rock1')
  click_button('Reveal winner')
end

def first_turn_two_players
  choose('spock1')
  choose('lizard2')
  click_button('Reveal winner')
end

def start_game_vs_computer
	visit('/')
	choose('computer')
	fill_in :name, with: "Antony"
	click_button 'Submit'
end

def start_game_vs_player
	visit('/')
	choose('human_radio')
	fill_in :name, with: "Antony"
	fill_in :player2_name, with: "Player 2"
	click_button('Submit')
end

def make_choice(choice)
	choose(choice)
	click_button('Make your choice!')
end
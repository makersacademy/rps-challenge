def one_player_standard
	visit('/')
	choose('one')
	choose('standard')
	click_button 'Submit'
	fill_in :player_1_name, with: 'Omar'
	click_button 'Submit'
end

def one_player_extended
	visit('/')
	choose('one')
	choose('extended')
	click_button 'Submit'
	fill_in :player_1_name, with: 'Omar'
	click_button 'Submit'
end

def two_players_standard
	visit('/')
	choose('two')
	choose('standard')
	click_button 'Submit'
	fill_in :player_1_name, with: 'Omar'
	fill_in :player_2_name, with: 'Laura'
	click_button 'Submit'
end

def two_players_extended
	visit('/')
	choose('two')
	choose('extended')
	click_button 'Submit'
	fill_in :player_1_name, with: 'Omar'
	fill_in :player_2_name, with: 'Laura'
	click_button 'Submit'
end

def full_game
	two_players_standard
	expect(page).to have_content ('Omar\'s turn')
	click_button 'rock'
	expect(page).to have_content ('Laura\'s turn')
	click_button 'rock'
	expect(page).to have_content ('Omar: Rock vs. Laura: Rock')
	expect(page).to have_content ('Tie')
end

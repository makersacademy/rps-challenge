feature 'Choose Weapon' do
	scenario 'Player can choose Rock' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    click_button 'Start Game'
		find_button('Rock')
	end
	scenario 'Player can choose Paper' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    click_button 'Start Game'
		find_button('Paper')
	end
	scenario 'Player can choose Scissors' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    click_button 'Start Game'
		find_button('Scissors')
	end
end

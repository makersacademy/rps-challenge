def sign_in_and_play
	visit('/')
    fill_in :player_1_name, with: 'Ana'
    fill_in :player_2_name, with: 'Chris'
    click_button 'Game on!'
end

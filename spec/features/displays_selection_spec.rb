feature 'Displays selection' do
	scenario 'once player has chosen rock' do
		single_player_sign_in
		click_button('rock')
		expect(page).to have_content('Riya chose rock')
	end
end
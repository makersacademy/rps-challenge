feature 'Displays score' do
	scenario 'on winner page' do
		single_player_sign_in
		click_button('rock')
		expect(page).to have_content('SCORE')
	end
end
feature 'Displays points' do
	scenario 'on winner page' do
		single_player_sign_in
		click_button('rock')
		expect(page).to have_content('points')
	end
end
feature ' Displays winner' do
	scenario 'displays winner' do
		single_player_sign_in
		click_button('rock')
		expect(page).to have_content('winner')
	end
end
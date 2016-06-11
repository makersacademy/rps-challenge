feature 'Enter name' do
	scenario 'fills in names, submits & displays on next page' do
		single_player_sign_in
		expect(page).to have_content 'Riya'
	end
end
feature 'Player name entry' do

	scenario 'player enters name, name is displayed' do
		sign_in_and_play
		expect(page).to have_text("Feynman")
	end

end
feature 'Rules' do

	scenario 'player name is displayed' do
		sign_in_and_play
		visit('/rules')
		expect(page).to have_text("Feynman")
	end

	scenario 'Page displays rules of engagement' do
		visit('/rules')
		expect(page).to have_text("Rock beats Scissors")
	end

end
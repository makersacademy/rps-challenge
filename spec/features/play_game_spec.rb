feature 'Play Rock, Paper, Scissors' do
	scenario 'All 3 buttons are visible' do
		sign_in_and_play
		expect(page).to have_button "Rock"
		expect(page).to have_button "Paper"
		expect(page).to have_button "Scissors"
	end
end
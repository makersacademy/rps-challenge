feature 'shows the score' do
	scenario 'see Player 2 score' do
		visit '/'
		fill_in :player1, with: "Ursie"
		fill_in :player2, with:	"Tom"
		click_button 'Submit'
		expect(page).to have_content "Tom: score 0"
	end
end 
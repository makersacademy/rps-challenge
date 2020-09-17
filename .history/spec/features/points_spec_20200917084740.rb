feature 'shows the score' do
	scenario 'see Player 2 score' do
		sign_in
		expect(page).to have_content "Tom: score 0"
	end
end 
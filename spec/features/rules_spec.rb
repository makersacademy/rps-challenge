feature 'Rules' do

	scenario 'Page displays rules of engagement' do
		visit('/rules')
		expect(page).to have_text("Rock beats Scissors")
	end

end
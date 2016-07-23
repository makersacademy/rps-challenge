feature 'Enter names' do
	scenario 'allows user to enter and view their name' do
		visit '/'
		fill_in "player_1", with: "Sam"
		click_button "Submit"
		expect(page).to have_content "Welcome Sam!"
	end	
end
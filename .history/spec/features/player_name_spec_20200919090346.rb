feature "entrting names" do
	scenario "submitting a name" do
		visit '/'
		fill_in :player_name, with: "Ursie"
		click_button 'Submit'
		expect(page).to have_content 'Ursie is ready to play'
	end 
end 

feature "entering names" do
	scenario "submitting a name" do
		sign_in	
		expect(page).to have_content 'Ursie'
	end 

	scenario "Has rps option buttons" do 
		sign_in
		expect(page).to have_button('move')
	end 
	scenario "lets a player win" do 
		sign_in
		click_button('rock')
		srand(0)
		expect(page).to have_content("Computer won")
	end
end 
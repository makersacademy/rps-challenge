
feature "entering names" do
	scenario "submitting a name" do
		sign_in	
		expect(page).to have_content 'Ursie'
	end 

	scenario "Has rps option buttons" do 
		sign_in
		expect(page).to have_button('move')
	end 

	scenario "lets a player loose" do 
		sign_in
		click_button('rock')
		srand(0)
		expect(page).to have_content("Computer won")
	end

	scenario "lets player know that its a draw" do
		sign_in
		click_button('paper')
		srand(0)
		expect(page).to have_conctent("Its a draw")
	end 
end 
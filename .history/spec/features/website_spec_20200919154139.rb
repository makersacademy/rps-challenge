
feature "entering names" do
	scenario "submitting a name" do
		sign_in	
		expect(page).to have_content 'Ursie'
	end 

	scenario "Has rpsls option buttons" do 
		sign_in
		expect(page).to have_button('move')
	end 
end 


























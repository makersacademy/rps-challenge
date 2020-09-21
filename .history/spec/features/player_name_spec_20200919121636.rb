
feature "entering names" do
	scenario "submitting a name" do
		sign_in	
		expect(page).to have_content 'Ursie'
	end 
end 
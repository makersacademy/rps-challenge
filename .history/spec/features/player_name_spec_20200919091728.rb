feature "entrting names" do
	scenario "submitting a name" do
		sign_in	
		expect(page).to have_content 'Ursie is ready to play!'
	end 
end 
feature 'Signup' do

	scenario 'user enters name' do
		sign_in_and_play
		expect(page).to have_text("Pick your weapon")
	end	
end
feature 'Playing' do
	scenario 'Player1 plays' do
		sign_in 
		click_button 'Play'
		expect(page).to have_content 'Ursie played'
	end
end 
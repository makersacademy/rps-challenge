feature 'Playing' do
	scenartio 'Player1 plays' do
		sign_in 
		click_link 'Play'
		expect(page).to have_content 'Ursie played'
	end
end 
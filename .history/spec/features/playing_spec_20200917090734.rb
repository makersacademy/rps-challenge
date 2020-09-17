feature 'Playing' do
	scneartio 'Player1 plays' do
		sign_in 
		click 'Play'
		expect(page).to have_content 'Ursie played'
	end
end 
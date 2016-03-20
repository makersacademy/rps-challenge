feature 'Winner' do 

	before(:each) do
		sign_in_and_play	
		allow(Kernel).to receive(:rand).and_return(2)
		click_button 'Rock'
	end

	scenario "Shows Player's chosen move" do
		@player_move = "Rock"
		text = "Player has chosen #{@player_move}" 
		expect(page).to have_content(text)
	end

	scenario "Shows Computers's chosen move" do
		text = "Computer has chosen #{Computer.move}"
		expect(page).to have_content(text)
	end

end
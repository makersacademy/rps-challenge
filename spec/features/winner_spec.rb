feature 'Winner' do 

	before(:each) do
		sign_in_and_play	
		click_button 'Rock'
		visit '/winner'
	end

	scenario "Shows Player's chosen move" do
		text = 'Player has chosen Rock'
		expect(page).to have_content(text)
	end

	scenario "Shows Computers's chosen move" do
		text = 'Computer has chosen Scissors'
		expect(page).to have_content(text)
	end

end
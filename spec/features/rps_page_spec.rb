feature 'Rock-Paper-Scissors page' do 
	before(:each) do
		sign_in_and_play
	end

	scenario 'Displays player\'s name' do
		text = "Hello Player!"
		expect(page).to have_content(text)
	end
end
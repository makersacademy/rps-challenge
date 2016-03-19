feature 'Rock-Paper-Scissors page' do 
	before(:each) do
		sign_in_and_play
	end

	scenario 'Displays player\'s name' do
		text = "Hello Player!"
		expect(page).to have_content(text)
	end

	scenario 'Show player the rules' do
		text = "Here's a quick reminder of the rules:
						Rock beats Scissors
						Scissors beats Paper
						Paper beats Rock"
		expect(page).to have_content(text)
	end

	scenario 'Player choses their move' do
		text = "You must now decide on a move"
		expect(page).to have_content(text)
	end

	scenario 'Can chose Rock' do
		find_button('Rock').click
	end

	scenario 'Can chose Paper' do
		find_button('Paper').click
	end

	scenario 'Can chose Scissors' do
		find_button('Scissors').click
	end
end
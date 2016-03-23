feature 'Show moves & if Player has won' do

	before(:each) do
		sign_in_and_play
		allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
		click_button 'Rock'
	end

	scenario "Shows Player's chosen move" do
		text = "#{@player_name} has chosen #{@player_move}"
		expect(page).to have_content(text)
	end

	scenario "Shows Computers's chosen move" do
		text = "Computer has chosen #{Computer.move}"
		expect(page).to have_content(text)
	end

	scenario "Shows if Player has won" do
		text = "And the winner is.. Player"
		expect(page).to have_content(text)
	end
end

feature 'Show PC has won' do
	before(:each) do
		sign_in_and_play
		allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
		click_button 'Paper'
	end

	scenario "Shows if Computer has won" do
		text = "And the winner is.. Computer"
		expect(page).to have_content(text)
	end
end

feature 'Shows if tie' do
	before(:each) do
		sign_in_and_play
		allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
		click_button 'Scissors'
	end

	scenario "Shows tie" do
		text = "Oh, it's a Draw!"
		expect(page).to have_content(text)
	end
end

feature 'Play again or new game' do
	before(:each) do
		sign_in_and_play
		click_button 'Scissors'
	end
	scenario "Shows button for play again" do
		find_button("Play again").click
	end
	scenario "Shows button for starting a new game" do
		find_button("Start a new game").click
	end
end

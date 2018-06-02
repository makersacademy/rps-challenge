feature 'Features' do

	# As a marketeer
	# So that I can see my name in lights
	# I would like to register my name before playing an online game
	scenario 'player can enter a name' do
		sign_in_and_play
		expect(page).to have_content('Mr.Spock')
	  end

	# As a marketeer
	# So that I can enjoy myself away from the daily grind
	# I would like to be able to play rock/paper/scissors
	scenario 'player can choose a spirit animal' do
		sign_in_and_play
		click_button('lizard')
		expect(page).to have_content('lizard')
	end

	scenario 'computer can choose a spirit animal' do
		$computer = nil
		sign_in_and_play
		click_button('rock')
		visit('/fight')
	expect($computer).not_to eq nil
  end

end
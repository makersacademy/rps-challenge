feature 'Features' do


	scenario 'player can enter a name' do
		sign_in_and_play
		expect(page).to have_content('Mr.Spock')
	  end


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
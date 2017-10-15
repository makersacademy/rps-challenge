feature 'Playing the game' do
  context 'Play versus computer' do
    scenario 'when RPS option is clicked, a message displays selected option' do
      sign_in_register
      find('input[value="ROCK"]').click
      expect(page).to have_content 'You have selected ROCK'
    end

    scenario 'when RPS option is clicked, player sees text showing Computer response' do
      sign_in_register
      find('input[value="PAPER"]').click
      expect(page).to have_content 'The computer has selected'
    end

    scenario 'the player wins' do
      allow_any_instance_of(Array).to receive(:sample) {'SCISSORS'}
      sign_in_register
      find('input[value="ROCK"]').click
      expect(page).to have_content "YOU WIN !!!!"
    end
  end






end

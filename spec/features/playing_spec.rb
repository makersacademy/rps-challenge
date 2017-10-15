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
      allow_any_instance_of(Array).to receive(:sample) { 'SCISSORS' }
      sign_in_register
      find('input[value="ROCK"]').click
      expect(page).to have_content "YOU WIN !!!!"
    end
  end

  context 'Player vs Player' do
    context 'Display features'
      scenario 'players click vs_player, they are prompted with two RPS options' do
        sign_in_register_two
        expect(page).to have_content "Please enter Pablo choice"
        expect(page).to have_content "Please enter Sonia choice"
      end
      scenario 'Player 1 and Player 2 options are displayed on screen' do
        sign_in_register_two
        find('.first_response input[value="ROCK"]').click
        find('.second_response input[value="ROCK"]').click
      expect(page).to have_content "Pablo has selected ROCK"
      expect(page).to have_content "Sonia has selected ROCK"
      end
    end
    context 'Player 1 wins' do
      scenario 'Player 1 wins the game ' do
        sign_in_register_two
        find('.first_response input[value="ROCK"]').click
        find('.second_response input[value="SCISSORS"]').click
        expect(page).to have_content "Pablo is the WINNER !!!!"
      end
  end
end

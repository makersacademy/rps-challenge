describe 'User Stories - Name' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  feature 'Player 1 enters name' do
    scenario 'and Player 2 is a computer' do
      sign_in_and_play_computer
      expect(page).to have_content('Emma vs. Computer')
    end

    scenario 'and Player 2 is a human' do
      sign_in_and_play_human
      expect(page).to have_content('Emma vs. Tobit')
    end

  end
end

describe 'User Stories - Name' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  feature 'Name form' do
    scenario 'user enters name' do
      sign_in_and_play_computer
      expect(page).to have_content('Emma vs. Computer')
    end

    scenario 'player 2 enter name' do
      sign_in_and_play_human
      expect(page).to have_content('Emma vs. Tobit')
    end
  end
end

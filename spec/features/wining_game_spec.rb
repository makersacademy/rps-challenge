
feature 'Wining the game' do
    scenario 'player picks rock and wins' do
      enter_name_and_play
      click_button('Rock')
      expect(page).to have_content('Rock beats sicssors: You win!')
    end
  end
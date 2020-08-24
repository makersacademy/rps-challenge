
feature 'Wining the game' do
    scenario 'player picks rock and wins' do
      srand(20)
      enter_name_and_play
      click_button('Rock')
      expect(page).to have_content('Rock beats sicssors: JS Wins!')
    end
  end
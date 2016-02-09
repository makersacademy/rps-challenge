feature 'Player can choose 1 or 2 player' do
  scenario 'given the choice to play vs. computer of against another person' do
      sign_in_multiplayer
      expect(page).to have_content('Eirik vs. Cleme')
  end

  scenario 'both players can click which attack they want' do
      sign_in_multiplayer
      click_button('Rock')
      click_button('Scissors')
      expect(page).to have_content('WON!')
  end
end

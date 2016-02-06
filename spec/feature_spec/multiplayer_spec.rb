feature 'multiplayer' do
  scenario 'given the choice to play vs. computer of against another person' do
      sign_in_multiplayer
      expect(page).to have_content('Eirik vs. Cleme')
  end

  scenario 'both players can click which attack they want' do
      sign_in_multiplayer
      page.choose('Rock1')
      page.choose('Scissors2')
      click_button('Submit')
      expect(page).to have_content('WON!')
  end
end

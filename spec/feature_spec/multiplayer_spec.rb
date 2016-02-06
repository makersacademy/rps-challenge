feature 'multiplayer' do
  scenario 'given the choice to play vs. computer of against another person' do
      visit('/')
      click_button('2-player')
      fill_in('Player1 name', with: 'Eirik')
      fill_in('Player2 name', with: 'Cleme')
      click_button('Submit')
      expect(page).to have_content('Eirik vs. Cleme')
  end

end

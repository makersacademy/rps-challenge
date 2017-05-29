feature 'Enter name' do

  scenario 'Allows player to enter name and see it on screen' do
      visit('/')
      fill_in('player', with: 'Prabu')
      click_button('Start Game')
      expect(page).to have_content 'Player: Prabu'
  end

end

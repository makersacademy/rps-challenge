feature 'the player' do
  scenario 'choose a guesture' do
    sing_in
      click_button('let\'s play')
      click_button('rock')
      expect(page).to have_content('Mattia you')
  end
end

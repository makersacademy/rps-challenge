feature 'the player' do
  scenario 'start to play' do
    sing_in
    click_button('let\'s play')
    expect(page).to have_content('choose a guesture')
  end
end

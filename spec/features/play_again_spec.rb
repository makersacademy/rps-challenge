feature 'Can Play Again' do
  scenario 'choose another button' do
    start_game
    click_button('Paper')
    click_link('Play Again?')
    expect(page).to have_content('Choose one!')
  end
end


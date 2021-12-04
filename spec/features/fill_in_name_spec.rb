feature 'Signing in the game' do
  scenario 'fill in with player name' do
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button('Play')
    expect(page).to have_content('Bot vs. Pikachu')
  end
end

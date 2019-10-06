feature 'Add a single player name' do
  scenario 'player can see their name once registered to play' do
    sign_in_and_play
    expect(page).to have_content('Pamela VS. COMPUTER')
  end
end 

feature 'Add multiple (two) players' do
  scenario 'two players can sign in' do
    visit('/')
    click_button('Multiplayer')
    fill_in(:player_1, with: 'Pamela')
    fill_in(:player_2, with: 'Pikachu')
    click_button('Ready!')
    expect(page).to have_content('Pamela VS. Pikachu')
  end
end
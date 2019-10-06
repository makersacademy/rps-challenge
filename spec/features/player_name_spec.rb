feature 'Add a player name' do
  scenario 'player can see their name once registered to play' do
    visit('/')
    fill_in(:player_1, with: 'Pamela')
    click_button('Ready!')
    expect(page).to have_content('Pamela VS.')
  end

end
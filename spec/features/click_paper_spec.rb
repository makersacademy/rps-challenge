feature 'Play paper' do
  scenario 'after game start choose Paper' do
    visit('/')
    fill_in :player_1, with: 'Dracula'
    click_button 'Start Game!'
    expect(page).to have_button('Paper')
  end
end

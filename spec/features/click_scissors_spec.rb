feature 'Play scissors' do
  scenario 'after game start choose Scissors' do
    visit('/')
    fill_in :player_1, with: 'Dracula'
    click_button 'Start Game!'
    expect(page).to have_button('Scissors')
  end
end

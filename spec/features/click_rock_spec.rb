feature 'Play rock' do
  scenario 'after game start choose Rock' do
    visit('/')
    fill_in :player_1, with: 'Dracula'
    click_button 'Start Game!'
    expect(page).to have_button('Rock')
  end
end

feature 'Play rock' do
  scenario 'after game start choose Rock' do
    visit('/')
    fill_in :player_1, with: 'Dracula'
    click_button 'Start Game!'
    click_button 'Rock'
    expect(page).to have_content 'You have choosen Rock'
  end
end

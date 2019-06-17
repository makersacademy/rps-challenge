feature 'Play paper' do
  scenario 'after game start choose Paper' do
    visit('/')
    fill_in :player_1, with: 'Dracula'
    click_button 'Start Game!'
    click_button 'Paper'
    expect(page).to have_content 'You have choosen Rock'
  end
end

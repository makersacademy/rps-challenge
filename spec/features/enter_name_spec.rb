feature 'Enter name' do
  scenario 'start game with name' do
    visit('/')
    fill_in :player_1, with: 'Dracula'
    click_button 'Start Game!'
    expect(page).to have_content 'Dracula choose your move:'
  end
end

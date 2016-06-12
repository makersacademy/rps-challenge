feature 'Choose Game Start' do
  scenario 'Player can choose to Start the Game' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    find_button('Start Game')
  end
end

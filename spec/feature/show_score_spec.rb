feature 'Show Score of the players' do
  scenario '#score of the computer' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    click_button 'Start Game'
    expect(page).to have_content 'Computer :'
  end
  scenario '#score of the player' do
    visit('/')
    fill_in :player_name, with: 'Apoorva'
    click_button 'Submit'
    click_button 'Start Game'
    expect(page).to have_content 'Apoorva :'
  end
end

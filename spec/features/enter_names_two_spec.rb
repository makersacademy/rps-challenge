
feature 'Enter names two player' do
  scenario 'submitting names' do
    visit('/')
    click_button '2 players'
    fill_in :player_1_name, with: 'Arnold'
    fill_in :player_2_name, with: 'Abram'
    click_button 'Start'
    expect(page).to have_content 'Arnold vs. Abram'
  end
end

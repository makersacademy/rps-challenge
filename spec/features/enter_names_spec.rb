feature 'Enter player name' do
  scenario 'Submitting the player name' do
    visit('/')
    fill_in :player_1_name, with: 'p1'
    click_button 'Play'
    expect(page).to have_content('Do your best p1')
  end
end

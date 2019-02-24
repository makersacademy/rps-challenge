feature 'Registering names' do
  scenario 'Player name displayed before playing an online game' do
    visit('/')
    fill_in :player_name, with: 'Winston'
    click_button 'Play'
    expect(page).to have_content 'Winston'
  end
end

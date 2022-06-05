feature 'Enter player names' do
  scenario 'Player submits name' do
    visit('/')
    fill_in :player_name, with: 'Raphaella'
    click_button 'Submit'
    expect(page).to have_content 'Player: Raphaella'
  end
end
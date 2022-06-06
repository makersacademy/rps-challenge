feature 'single player game' do
  xscenario 'player selects rock' do
    visit('/')
    fill_in :player_name, with: 'Raphaella'
    click_button 'Submit'
    click_button 'Rock'
    save_and_open_page
    expect(page).to have_content 'Raphaella selected Rock'
  end
end
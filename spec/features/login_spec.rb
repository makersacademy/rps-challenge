feature 'Log-in' do
  scenario 'Registering a name before starting a game' do
    visit '/'
    fill_in :player_1_name, with: 'Crescenzo'
    click_button 'Submit'
    expect(page).to have_content "Welcome Crescenzo!"
  end
end

feature 'Welcome page' do
  scenario 'returns name in welcome message' do
    visit('/')
    fill_in :player_name, with: 'joe'
    click_button 'Submit'
    expect(page).to have_content "Welcome Joe!"
  end
end

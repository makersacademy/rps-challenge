feature 'Enter name' do
  scenario 'user submits a name' do
    visit('/')
    fill_in :player_name, with: 'joe'
    click_button 'Submit'
    expect(page).to have_content "Welcome Joe!"
  end
end

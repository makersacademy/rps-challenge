feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Lancelot'
    click_button 'Submit'
    expect(page).to have_content 'Lancelot'
  end
end

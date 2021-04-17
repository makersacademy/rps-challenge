feature 'Enter name' do
  scenario 'submit a name' do
    visit('/')
    fill_in :player_name, with: 'Yohann'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, Yohann'
  end
end

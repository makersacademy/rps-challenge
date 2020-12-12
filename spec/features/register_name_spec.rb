feature 'Register name' do
  scenario 'registering user name' do
    visit('/')
    fill_in :player_name, with: 'Jimbob'
    click_button 'Submit'
    expect(page).to have_content 'Hi Jimbob!'
  end
end

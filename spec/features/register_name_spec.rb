feature 'Register name' do
  scenario 'registering name' do
    visit('/')
    fill_in :player_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Chris!'
  end
end

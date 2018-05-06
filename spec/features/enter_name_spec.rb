feature 'Enter name' do
  scenario 'submitting a name' do
    visit '/'
    fill_in :player_name, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content("Welcome, Mark")
  end
end

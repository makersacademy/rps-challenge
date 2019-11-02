feature 'entering a name' do
  scenario 'can enter their name and see it displayed' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave'
  end
end

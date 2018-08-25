feature 'Entering name' do
  scenario 'Can submit a name' do
    visit('/')
    fill_in :player_name, with: "Jimmy"
    click_button 'Submit'
    expect(page).to have_content 'Welcome Jimmy!'
  end
end

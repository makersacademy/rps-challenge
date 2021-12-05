
feature 'Enter name' do
  scenario 'The user submits their name' do
    visit('/')
    fill_in :player_name, with: 'Sabrina'
    click_button 'Submit'
    expect(page).to have_content 'Choose your item:'
  end
end

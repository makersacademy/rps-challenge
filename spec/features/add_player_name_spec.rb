feature 'Enter name' do
  scenario 'user submits a name' do
    visit('/')
    fill_in :player_name, with: 'Joe'
    click_button 'Submit'
    expect(page).to have_content 'Joe'
  end
end

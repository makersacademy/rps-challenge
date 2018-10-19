feature 'Enter name' do
  scenario 'user enters name' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Hello Dave'
  end
end

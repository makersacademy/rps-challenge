feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_1_name, with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content 'Alex'
  end
end

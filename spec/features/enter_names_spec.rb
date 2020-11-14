feature 'Enter names' do
  scenario 'User submits names' do
    visit('/')
    fill_in :player_1_name, with: 'Mel'
    click_button 'Submit'
    expect(page).to have_content 'Mel vs. Computer'
  end
end

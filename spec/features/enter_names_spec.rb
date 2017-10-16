feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Chris VS. Computer'
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Jordan'
    click_button 'Submit'
    expect(page).to have_content 'Jordan vs. Computer'
  end
end

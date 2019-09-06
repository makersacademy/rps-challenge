feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Alpha'
    click_button 'Submit'
    expect(page).to have_content 'Alpha'
  end
end

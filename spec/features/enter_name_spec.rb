feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave Vs. AI'
  end
end
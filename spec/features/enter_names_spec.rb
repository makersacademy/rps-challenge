feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dusty'
    click_button 'Submit'
    expect(page).to have_content 'Ah, Dusty, you know the drill...'
  end
end
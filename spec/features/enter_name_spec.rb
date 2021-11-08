feature 'Enter name' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Teffox'
    click_button 'Submit'
    expect(page).to have_content 'Player: Teffox'
  end
end
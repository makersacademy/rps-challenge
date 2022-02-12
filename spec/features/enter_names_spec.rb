
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'John'
    click_button 'Register'
    expect(page).to have_content 'Player Name: John'
  end
end
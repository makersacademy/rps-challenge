feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock Paper Scissors Chris'
  end
end
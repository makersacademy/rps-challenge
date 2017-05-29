
feature 'entering player name' do
  scenario 'submitting name at start of game' do
    visit('/')
    fill_in :player_name, with: 'Zaphod'
    click_button 'Submit'
    expect(page).to have_content 'Hi there, Zaphod!'
  end
end
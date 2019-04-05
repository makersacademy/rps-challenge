feature 'Enter the players name' do
  scenario 'PLayer can enter their name and click submit' do
    visit ('/')
    fill_in :player_name, with: 'Sean'
    click_button 'Submit'
    expect(page).to have_content 'Sean vs. The Dark Web o.0'
  end
end

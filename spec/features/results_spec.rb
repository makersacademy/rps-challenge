feature 'display results' do
  scenario 'after having submitted r/p/s and comparing to computer result' do
    visit('/')
    fill_in :player_1_name, with: 'Dusty'
    click_button 'Submit'
    fill_in :choice, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content "Dusty: 'ROCK!'"
  end
end
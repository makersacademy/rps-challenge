feature 'Player to register name' do
  scenario 'Fill in form with name' do
    visit('/')
    fill_in :player_name, with: 'Allanon'
    click_button 'Submit'
    expect(page).to have_content 'Allanon has entered the fight!'
  end
end

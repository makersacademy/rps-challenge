feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Vin Diesel'
    click_button 'Submit'
    expect(page).to have_content 'Vin Diesel vs. Computer'
  end
end


feature 'Enter Names' do

  scenario 'player enters their name' do
    visit('/')
    fill_in :player_1_name, with: 'Starcy'
    click_button 'Submit'
    expect(page).to have_content 'Great Starcy! Choose your weapon of choice.'
  end
end

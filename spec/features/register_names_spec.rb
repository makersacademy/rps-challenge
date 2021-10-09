feature 'register players\'s names' do
  scenario 'Players start the game by entering their names' do 
    fill_in :player_1_name, with: 'Cat'
    click_button 'Submit'
    expect(page).to have_content 'Cat'
  end 
end 
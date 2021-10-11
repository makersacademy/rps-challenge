feature 'register players\'s names' do
  scenario 'Players start the game by entering their names' do 
    visit('/')
    fill_in :player_name, with: 'Cat'
    click_button 'rock'
    expect(page).to have_content 'Cat'
    expect(page).to have_content 'rock'
  end 
end 

feature 'pressing buttons on the game page' do

  scenario 'choose move in the game' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave'
    click_button 'Rock'
    expect(page).to have_content 'Congratulations player, you have won'
  end

end

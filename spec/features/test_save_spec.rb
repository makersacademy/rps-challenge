feature 'test ability to save a game' do

  scenario 'player saves the game state' do
    sign_in
    click_on('Rock')
    click_on('Save and Exit')
    expect(page).to have_content('Game saved, thank you for playing!')
  end

  # scenario 'player sets a password' do
  #   sign_in
  #   click_on('Rock')
  #   fill_in :password, with: 'abc123'
  #   click_on('Save and Exit')
  #   expect(page).to have_content('Game saved, thank you for playing!')
  # end


end

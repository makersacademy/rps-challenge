feature 'test ability to load a game' do

  scenario 'player loads the game state' do
    sign_in
    click_on('Rock')
    click_on('Save and Exit')
    click_on('Continue')
    click_on('Load Game')
    expect(page).to have_current_path('/play')
  end

end

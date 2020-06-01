feature 'play page single player' do
  scenario 'displays player name after they have entered their name and hit Submit' do
    sign_in_and_play
    expect(page).to have_content 'STEVE, SELECT YOUR MOVE'
  end

  scenario 'presents player with Rock, Paper and Scissors options' do
    sign_in_and_play
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'has an option to return to main menu' do
    sign_in_and_play
    click_button 'Main Menu'
    expect(page).to have_content 'SELECT A GAME MODE'
  end
end

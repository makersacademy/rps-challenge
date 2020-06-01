feature 'play page multiplayer' do
  scenario 'displays player 1 name after they have entered their name and hit Submit' do
    sign_in_and_play_multi
    expect(page).to have_content 'STEVE, SELECT YOUR MOVE'
  end

  scenario 'displays player 2 name after they have entered their name and hit Submit' do
    sign_in_and_play_multi
    click_button 'Rock'
    expect(page).to have_content 'ALAN, SELECT YOUR MOVE'
  end

  scenario 'presents player with Rock, Paper and Scissors options' do
    sign_in_and_play_multi
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'has an option to return to main menu' do
    sign_in_and_play_multi
    click_button 'Main Menu'
    expect(page).to have_content 'SELECT A GAME MODE'
  end
end

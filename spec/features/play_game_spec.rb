STUBBED_SELECTION = 3

feature 'Play the Game' do
  scenario 'shows players how to play the game' do
    sign_in_and_play
    expect(page).to have_content 'Rules of the Game'
  end
end

feature 'Playing the Game' do
  scenario 'showing players options available to them' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end

feature 'Player chooses an option' do
  scenario 'player chooses an option to play and receives confirmaton' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock'
  end
end

feature 'Computer chooses a random option' do
  scenario 'random option chosen by computer' do
    srand(STUBBED_SELECTION)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Computer has chosen Scissors'
  end
end

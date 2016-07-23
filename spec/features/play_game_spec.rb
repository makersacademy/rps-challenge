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

feature 'Computer choosing an option' do
  scenario 'Computer chooses an option to play against player' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer has chosen Rock'
  end
end


# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

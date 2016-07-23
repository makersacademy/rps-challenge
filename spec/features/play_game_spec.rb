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


# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

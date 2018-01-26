feature 'play the game' do

  scenario 'the weapons (rock, paper, scissors) are presented' do
    register_and_play
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'the player chooses a weapon' do
    register_and_play
    click_button 'paper'
    expect(page).to have_content 'You have chosen paper!'
  end

  scenario 'the computer chooses a random weapon' do
    register_and_play
    srand(22671)
    click_button 'rock'
    expect(page).to have_content 'The computer has chosen scissors!'
  end

end

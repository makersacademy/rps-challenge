require './app'

feature 'game play' do
  scenario 'player chooses default rock and game chooses scissors => player wins' do
    srand(3)
    register
    choose 'rock'
    click_button 'Play'
    expect(page).to have_content("WIN")
  end
  scenario 'player chooses paper and game chooses scissors => player loses' do
    srand(3)
    register
    choose 'paper'
    click_button 'Play'
    expect(page).to have_content("LOSE")
  end
  scenario 'player chooses scissors and game chooses scissors => player draws' do
    srand(3)
    register
    choose 'scissors'
    click_button 'Play'
    expect(page).to have_content("DRAW")
  end
  scenario 'after getting a result, player is offered chance to play again' do
    srand(3)
    register
    choose 'scissors'
    click_button 'Play'
    expect(page).to have_button("Play again")
  end
  scenario 'after getting a result, player chooses to play again' do
    srand(3)
    register
    choose 'scissors'
    click_button 'Play'
    click_button 'Play again'
  end
end

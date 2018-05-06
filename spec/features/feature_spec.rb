feature 'Allows user to enter name' do
  scenario 'Displays name' do
    visit('/')
    fill_in 'player_name', with: 'Sam'
    click_button('Submit')
    expect(page).to have_content "Player 1: Sam"
  end
end

feature 'Displays options' do
  scenario 'Gives user the choice of rock, paper, or scissors' do
    start_game
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

feature 'Attack screen shows the winner' do
  before { allow_any_instance_of(Array).to receive(:sample).and_return(:scissors) }
  scenario 'The player wins' do
    start_game
    click_button('Rock')
    expect(page).to have_content "Sam wins!"
  end

  scenario 'The computer wins' do
    start_game
    click_button('Paper')
    expect(page).to have_content "Computer wins!"
  end

  scenario 'The player and the computer draw' do
    start_game
    click_button('Scissors')
    expect(page).to have_content "Draw!"
  end
end

feature 'Restarts the game' do
  scenario 'Gives the player the options again' do
    start_game
    click_button('Rock')
    click_button('Play Again')
    expect(page).to have_button 'Rock'
  end
end

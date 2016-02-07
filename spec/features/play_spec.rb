feature 'play the game' do

  scenario 'player can choose "Rock"' do
    choose_rock
    expect(page).to have_content('Your choice: Rock')
  end

  scenario 'player can choose "Paper"' do
    choose_paper
    expect(page).to have_content('Your choice: Paper')
  end

  scenario 'player can choose "Scissors"' do
    choose_scissors
    expect(page).to have_content('Your choice: Scissors')
  end

  scenario 'player sees computer choice' do
    allow(Kernel).to receive(:rand).and_return(0)
    choose_scissors
    expect(page).to have_content('My choice  : Rock')
  end

  scenario 'return you won message when visitor wins' do
    allow(Kernel).to receive(:rand).and_return(2)
    choose_rock
    expect(page).to have_content('You are the winner!')
  end

  scenario 'return I won message when computer wins' do
    allow(Kernel).to receive(:rand).and_return(2)
    choose_paper
    expect(page).to have_content("This one's for me")
  end

  scenario 'return draw message when no winner' do
    allow(Kernel).to receive(:rand).and_return(2)
    choose_scissors
    expect(page).to have_content("It's a draw!")
  end

  scenario 'button play again goes back to play' do
    choose_paper
    click_button('Play Again')
    expect(page).to have_content('Make your choice')
  end

  scenario 'button start again starts a new game' do
    choose_paper
    click_button('Start New Game')
    expect(page).to have_content('Welcome in')
  end
end

feature 'Enter names' do
  scenario "player enters their name and it returns input on the screen" do
    sign_in_and_play
    expect(page).to have_content 'Sam'
  end
  scenario "player enters their choice and it returns input on the screen" do
    sign_in_and_play
    expect(page).to have_content 'Rock'
  end
  scenario "Player enters Rock and Computer Chooses Rock. Round Drawn" do
    srand(0)
    sign_in_and_play
    expect(page).to have_content 'draw'
  end
  scenario "Player enters Rock and Computer Chooses Paper. Computer wins" do
    srand(1)
    sign_in_and_play
    expect(page).to have_content 'Computer wins'
  end
  scenario "Player enters Rock and Computer Chooses Scissors. Player wins" do
    srand(3)
    sign_in_and_play
    expect(page).to have_content 'Player wins'
  end
  scenario "Player wins two rounds and wins the game." do
    srand(3)
    sign_in_and_play
    srand(3)
    click_button 'Submit'
    expect(page).to have_content 'Player wins'
  end
  scenario "Computer wins two rounds and wins the game." do
    srand(1)
    sign_in_and_play
    srand(1)
    click_button 'Submit'
    expect(page).to have_content 'Computer wins'
  end
  scenario "Computer wins two rounds and wins the game. New Game Commenced" do
    srand(1)
    sign_in_and_play
    srand(1)
    click_button 'Submit'
    click_button 'Submit'
    click_button 'New Game'
    expect(page).to have_content 'What is your name?'
  end
end

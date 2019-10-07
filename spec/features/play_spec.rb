feature 'play RockPaperScissors' do

  scenario 'player 1 can select rock' do
    start_the_game
    expect(page).to have_button "Rock"
  end

  scenario 'player 1 can select paper' do
    start_the_game
    expect(page).to have_button "Paper"
  end

  scenario 'player 1 can select scissors' do
    start_the_game
    expect(page).to have_button "Scissors"
  end

  scenario 'player 1 can select lizard' do
    start_the_game
    expect(page).to have_button "Lizard"
  end

  scenario 'player 1 can select Spock' do
    start_the_game
    expect(page).to have_button "Spock"
  end
end

feature 'player2 RockPaperScissors' do

  scenario 'player2 can select rock' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button "Rock"
  end

  scenario 'player2 can select paper' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button "Paper"
  end

  scenario 'player2 can select scissors' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button "Scissors"
  end

  scenario 'player 2 can select lizard' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button "Lizard"
  end

  scenario 'player 2 can select Spock' do
    start_the_game
    click_button 'Rock'
    expect(page).to have_button "Spock"
  end
end

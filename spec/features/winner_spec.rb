feature 'winner' do
  scenario 'display the winner if player chooses rock and computer is stubbed at paper' do
    srand(678_910)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Computer's move: Paper"
    expect(page).to have_content "The computer wins!"
  end

  scenario 'display the winner if player chooses paper and computer is stubbed at paper' do
    srand(678_910)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Your move: Paper"
    expect(page).to have_content "Computer's move: Paper"
    expect(page).to have_content "Draw!"
  end

  scenario 'display the winner if player chooses scissors and computer is stubbed at paper' do
    srand(678_910)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content "Your move: Scissors"
    expect(page).to have_content "Computer's move: Paper"
    expect(page).to have_content "You win!"
  end
end

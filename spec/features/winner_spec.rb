feature 'winner' do
  scenario 'display the winner after player and computer made a move' do
    srand(678_910)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Computer's move: Scissors"
    expect(page).to have_content "You win!"
  end
end

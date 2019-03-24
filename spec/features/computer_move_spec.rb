feature 'computer makes a move after player' do
  scenario 'computer move' do
    srand(678_910)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Computer's move: Scissors"
  end
end

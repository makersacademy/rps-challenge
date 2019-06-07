feature 'Computer makes a random move after player' do
  scenario 'computer returns paper' do
    srand(678_910)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Computer's move: Paper"
  end

  scenario 'computer returns paper' do
    srand(678_909)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Computer's move: Rock"
  end

  scenario 'computer returns paper' do
    srand(678_913)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Computer's move: Scissors"
  end
end

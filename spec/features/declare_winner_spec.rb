feature 'choose randomly' do
  scenario 'Computer win with option of Scissors when player choose Paper ' do
    register
    chose_paper
    srand(678_09)
    expect(page).to have_content 'Computer Wins!'
  end

  scenario 'Computer win with option of Paper when Computer choose Scissors' do
    register
    chose_rock
    srand(4)
    expect(page).to have_content 'Pikachu Wins!'
  end

  scenario 'Draw when both player and computer choose Scissors ' do
    register
    chose_scissors
    srand(4)
    expect(page).to have_content 'Draw!'
  end

end

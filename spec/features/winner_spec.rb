feature 'declares winner' do
  scenario 'player wins' do
    srand(2)
    chose_paper
    expect(page).to have_content "Nigel wins!"
  end

  scenario 'computer wins' do
    srand(3)
    chose_paper
    expect(page).to have_content "Computer wins!"
  end

  scenario 'draw' do
    srand(2)
    chose_rock
    expect(page).to have_content "It's a draw!"
  end
end

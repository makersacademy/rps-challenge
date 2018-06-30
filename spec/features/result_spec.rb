feature 'Human player move confirmation' do
  scenario 'Human player chooses rock' do
    choose_rock
    expect(page).to have_content "Telgi: you have selected rock"
  end

  scenario 'Human player chooses paper' do
    choose_paper
    expect(page).to have_content "Telgi: you have selected paper"
  end

  scenario 'Human player chooses scissors' do
    choose_scissors
    expect(page).to have_content "Telgi: you have selected scissors"
  end
end

feature 'Computer move confirmation' do
  scenario 'Computer chooses rock' do
    srand(2)
    choose_paper
    expect(page).to have_content "Computer: you have selected rock"
  end

  scenario 'Computer chooses paper' do
    srand(1)
    choose_rock
    expect(page).to have_content "Computer: you have selected paper"
  end

  scenario 'Computer chooses scissors' do
    srand(3)
    choose_scissors
    expect(page).to have_content "Computer: you have selected scissors"
  end
end

feature 'Result confirmation' do
  scenario 'Human player confirmed as winner given correct rules' do
    srand(3)
    choose_rock
    expect(page).to have_content "Telgi Wins!"
  end

  scenario 'Computer confirmed as winner given correct rules' do
    srand(1)
    choose_rock
    expect(page).to have_content "Computer Wins!"
  end

  scenario 'Draw confirmed when moves are equal' do
    srand(2)
    choose_rock
    expect(page).to have_content "It's a Draw"
  end
end

feature 'Game Score' do
  scenario 'Human player\'s score increases by 1 if they win' do
    srand(3)
    choose_rock
    expect(page).to have_content "Telgi 1 : 0 Computer"
  end

  scenario 'Computer\'s score increases by 1 if they win' do
    srand(1)
    choose_rock
    expect(page).to have_content "Telgi 0 : 1 Computer"
  end

  scenario 'Scores remain the same if the outcome is a draw' do
    srand(2)
    choose_rock
    expect(page).to have_content "Telgi 0 : 0 Computer"
  end
end

feature 'Option to play again' do
  scenario 'Human player gets to choose if they want a rematch' do
    srand(1)
    choose_rock
    expect(page).to have_button "Play Again?"
  end
end

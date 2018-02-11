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

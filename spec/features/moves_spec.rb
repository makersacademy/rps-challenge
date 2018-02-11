feature 'Human Player move confirmation' do
  scenario 'Human Player chooses rock' do
    choose_rock
    expect(page).to have_content "Telgi: you have selected rock"
  end

  scenario 'Human Player chooses paper' do
    choose_paper
    expect(page).to have_content "Telgi: you have selected paper"
  end

  scenario 'Human Player chooses scissors' do
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

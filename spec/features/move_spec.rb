feature 'Player move confirmation' do
  scenario 'Player one chooses rock' do
    choose_rock
    expect(page).to have_content "Telgi: you have selected rock"
  end
  scenario 'Player one chooses paper' do
    choose_paper
    expect(page).to have_content "Telgi: you have selected paper"
  end
  scenario 'Player one chooses scissors' do
    choose_scissors
    expect(page).to have_content "Telgi: you have selected scissors"
  end
end

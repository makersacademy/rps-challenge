feature 'play RPS' do
  scenario 'player selects rock' do
    srand(12_314)
    select_rock
    expect(page).to have_content "Loose"
  end

  scenario 'player selects Rock' do
    srand(9)
    select_rock
    expect(page).to have_content "Win"
  end

  scenario 'player selects Rock' do
    srand(8)
    select_rock
    expect(page).to have_content "Draw"
  end
end

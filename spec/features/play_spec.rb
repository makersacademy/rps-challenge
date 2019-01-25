feature 'play RPS' do
  scenario 'player selects rock' do
    srand(12_314)
    select_rock
    expect(page).to have_content "Unlucky Adam, looks like you lost!"
  end

  scenario 'player selects Rock' do
    srand(9)
    select_rock
    expect(page).to have_content "Congratulations Adam, you won!"
  end

  scenario 'player selects Rock' do
    srand(8)
    select_rock
    expect(page).to have_content "It's a draw!"
  end
end

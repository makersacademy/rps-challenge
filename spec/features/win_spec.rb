feature 'win conditions' do
  scenario 'displays who won the round' do
    name_and_play
    srand(1)
    click_button "scissors"
    expect(page).to have_content "George wins!"
  end
  scenario 'displays draw if both pick the same' do
    name_and_play
    srand(3)
    click_button "scissors"
    expect(page).to have_content "Draw!"
  end
  scenario 'counts the number of wins and losses' do
    name_and_play
    srand(1)
    click_button "scissors"
    expect(page).to have_content "George has won 1 out of 1 games"
    expect(page).to have_content "(100.0%)"
  end
end

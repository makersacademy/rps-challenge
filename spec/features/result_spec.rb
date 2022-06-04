feature 'Result of choice' do
  scenario 'Player 1 chooses Rock, player 2 scissors' do
    sign_in_and_play
    player_1_rock_p2_scissors
    expect(page).to have_content "Joe chose rock"
    expect(page).to have_content "Dan chose scissors"
    expect(page).not_to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose scissors"
  end

  scenario 'Player 1 chooses paper, player 2 rock' do
    sign_in_and_play
    player_2_rock_p1_paper
    expect(page).to have_content "Joe chose paper"
    expect(page).to have_content "Dan chose rock"
    expect(page).not_to have_content "Joe chose rock"
    expect(page).not_to have_content "Dan chose scissors"
  end

  scenario 'Player 1 chooses scissors, player 2 paper' do
    sign_in_and_play
    player_2_paper_p1_scissors
    expect(page).to have_content "Joe chose scissors"
    expect(page).to have_content "Dan chose paper"
    expect(page).not_to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose rock"
  end
end
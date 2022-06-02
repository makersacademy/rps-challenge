feature 'Result of choice' do
  scenario 'Player 1 chooses Rock' do
    sign_in_and_play
    player_1_chooses_rock
    expect(page).to have_content "Joe chose rock"
    expect(page).not_to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose scissors"
  end

  scenario 'Player 1 chooses paper' do
    sign_in_and_play
    player_1_chooses_paper
    expect(page).to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose rock"
    expect(page).not_to have_content "Joe chose scissors"
  end

  scenario 'Player 1 chooses scissors' do
    sign_in_and_play
    player_1_chooses_scissors
    expect(page).to have_content "Joe chose scissors"
    expect(page).not_to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose rock"
  end
end
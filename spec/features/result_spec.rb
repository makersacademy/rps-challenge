feature 'Result of choice' do
  scenario 'Player 1 chooses Rock' do
    sign_in_and_play
    fill_in :player_choice, with: 'rock'
    click_button 'Play'
    expect(page).to have_content "Joe chose rock"
    expect(page).not_to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose scissors"
  end

  scenario 'Player 1 chooses paper' do
    sign_in_and_play
    fill_in :player_choice, with: 'paper'
    click_button 'Play'
    expect(page).to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose rock"
    expect(page).not_to have_content "Joe chose scissors"
  end

  scenario 'Player 1 chooses scissors' do
    sign_in_and_play
    fill_in :player_choice, with: 'scissors'
    click_button 'Play'
    expect(page).to have_content "Joe chose scissors"
    expect(page).not_to have_content "Joe chose paper"
    expect(page).not_to have_content "Joe chose rock"
  end
end
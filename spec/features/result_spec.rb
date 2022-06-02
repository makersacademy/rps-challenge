feature 'Result of choice' do
  scenario 'Player 1 chooses Rock' do
    sign_in_and_play
    fill_in :player_choice, with: 'rock'
    click_button 'Play'
    expect(page).to have_content "Joe chose rock"
  end

  skip 'Computer chooses paper' do
    sign_in_and_play
    fill_in :player_choice, with: 'rock'
    click_button 'Play'
    expect(page).to have_content "Joe chose rock"
    expect(page).to have_content "AI chose paper"
  end
end
feature "Play again" do
  scenario "After completing a game, a player can play the game again" do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    click_button 'Rock'
    expect(page).to have_content 'Alex chose Rock'
    click_button 'Play Again'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors Game!'
  end
end

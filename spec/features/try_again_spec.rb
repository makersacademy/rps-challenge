feature 'lets the player play the game again' do
  scenario 'go back to choosing a move after game ends' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content "choose rock, paper, scissors, lizard or spock?"
  end
end

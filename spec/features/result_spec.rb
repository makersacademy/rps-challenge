require_relative '../../app'

feature "Draw is declared" do
  scenario "when both players make the same move" do
    choose_rock
    srand 0
    click_button 'Submit'
    expect(page).to have_content "It's a draw."
  end
end

feature "Player is declared the winner" do
  scenario "when the player beats the computer" do
    choose_rock
    srand 3
    click_button 'Submit'
    expect(page).to have_content "Joe wins!"
  end
end

feature "Computer is declared the winner" do
  scenario "when the computer beats the player" do
    choose_rock
    srand 1
    click_button 'Submit'
    expect(page).to have_content "Computer wins!"
  end
end

feature "When the result has been revealed" do
  scenario "the player can choose to play again" do
    straight_to_result
    expect(page).to have_button 'Play again'
  end
end

feature "When clicking to play again" do
  scenario "the player is sent back to the '/play' page" do
    straight_to_result
    click_button 'Play again'
    expect(page).to have_content "Hello Joe! Let's play rock paper scissors!"
  end
end

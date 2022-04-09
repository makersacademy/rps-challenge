require_relative '../../app'

feature "Draw is declared" do
  scenario "when both players make the same move" do
    sign_in_and_play
    select "Rock", from: 'choice'
    srand 0
    click_button 'Submit'
    expect(page).to have_content "It's a draw."
  end
end

feature "Player is declared the winner" do
  scenario "when the player beats the computer" do
    sign_in_and_play
    select "Rock", from: 'choice'
    srand 3
    click_button 'Submit'
    expect(page).to have_content "Joe wins!"
  end
end

feature "Computer is declared the winner" do
  scenario "when the computer beats the player" do
    sign_in_and_play
    select "Rock", from: 'choice'
    srand 1
    click_button 'Submit'
    expect(page).to have_content "Computer wins!"
  end
end

feature "Players can win or lose the game" do
  scenario "Player 1 wins" do
    sign_in_and_play
    select "Rock", :from => "options"
    click_button "Play!"
    allow($game.player_2).to receive(:weapon).and_return "scissors"
    expect(page).to have_content "Rock beats Scissors! Holden Caulfield wins!!"
  end

  scenario "Player 2 wins" do
    sign_in_and_play
    select "Rock", :from => "options"
    click_button "Play!"
    allow($game.player_2).to receive(:weapon).and_return "paper"
    expect(page).to have_content "Paper beats Rock! HAL wins!!"
  end

  scenario "Draw" do
    sign_in_and_play
    select "Rock", :from => "options"
    click_button "Play!"
    allow($game.player_2).to receive(:weapon).and_return "rock"
    expect(page).to have_content "It's a draw!!"
  end
end

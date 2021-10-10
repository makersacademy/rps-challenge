feature "announce winner or loser" do
  scenario "player wins the game" do
    allow(Player::CHOICES).to receive(:sample).and_return("PAPER")
    sign_in_and_play
    click_button "SCISSORS"
    expect(page).to have_content "Serena wins!"
    expect(page).not_to have_content "Bot wins!"
  end

  scenario "bot wins the game" do
    allow(Player::CHOICES).to receive(:sample).and_return("PAPER")
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content "Bot wins!"
    expect(page).not_to have_content "You win!"
  end
end

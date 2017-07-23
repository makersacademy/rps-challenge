feature "Players can win or lose the game" do
  scenario "Player 1 wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
    sign_in_and_play
    select "Rock", :from => "options"
    click_button "Play!"
    expect(page).to have_content "Rock beats Scissors! Holden Caulfield wins!!"
  end

  scenario "Player 2 wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
    sign_in_and_play
    select "Paper", :from => "options"
    click_button "Play!"
    expect(page).to have_content "Scissors beats Paper! HAL wins!!"
  end

  scenario "Draw" do
    allow_any_instance_of(Player).to receive(:weapon) { "scissors" }
    sign_in_and_play
    select "Scissors", :from => "options"
    click_button "Play!"
    expect(page).to have_content "It's a draw!!"
  end
end


feature "you choose rock, and it gives the result.." do

  scenario "lose, when the game picks paper" do
    allow_any_instance_of(Computer).to receive(:choice).and_return("paper")
    attack_with_rock
    expect(page).to have_content("computer choses paper")
    expect(page).to have_content("computer won!")
  end

  scenario "win, when the game picks scissors" do
    allow_any_instance_of(Computer).to receive(:choice).and_return("scissors")
    attack_with_rock
    expect(page).to have_content("computer choses scissors")
    expect(page).to have_content("Derek won!")
  end

  scenario "draw, when the game picks rock" do
    allow_any_instance_of(Computer).to receive(:choice).and_return("rock")
    attack_with_rock
    expect(page).to have_content("computer choses rock")
    expect(page).to have_content("You drew!")
  end

end

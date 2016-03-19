feature "Result" do
  before do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return :paper
  end

  context "Computer chooses Paper" do
    scenario "player loses when choosing Rock" do
      click_button "Rock"
      expect(page).to have_content "Awww, you lost! :("
    end

    scenario "it is a tie when player chooses Paper" do
      click_button "Paper"
      expect(page).to have_content "It's a tie"
    end

    scenario "player wins when choosing Scissors" do
      click_button "Scissors"
      expect(page).to have_content "Woohoo! You won! :D"
    end
  end

  scenario "allows player to rematch" do
    click_button "Rock"
    expect(page).to have_link "Play Again!"
  end

  scenario "allows to change player" do
    click_button "Rock"
    expect(page).to have_link "Change Player"
  end
end

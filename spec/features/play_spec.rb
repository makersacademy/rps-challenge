# As a marketeer,
# So that I can enjoy myself away from the daily grind,
# I would like to be able to play rock/paper/scissors.

describe "Play" do
  it "displays turn submit button" do
    sign_in
    expect(page).to have_selector "button"
  end

  context "when in game" do
    before do
      sign_in
      select "Paper", from: "turn"
      click_button "play"
    end

    it "displays outcome of 'Paper' for player's turn" do
      expect(page).to have_content "Paper"
    end
  
    it "displays outcome of computer's turn" do
      expect(page).to have_content "Computer's turn was"
    end

    it "displays 'play again' button" do
      expect(page).to have_selector "form button[value='play-again']"
    end

    it "displays the result" do
      expect(page).to have_selector("h2", :id => "result")
    end
  end
end

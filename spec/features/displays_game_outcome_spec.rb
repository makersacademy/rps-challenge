feature "Outcome page" do

  let(:player_1) { double("Jim", name: "Jim") }
  let(:player_2) { double("Bob", name: "Bob") }

  before(:each) do
    allow_any_instance_of(Computer).to receive(:move).and_return(:scissors)
  end

  context "against the computer" do

    scenario "Shows the outcome of a winning game" do
      sign_in_and_play_against_computer
      click_button "rock"
      expect(page).to have_content("Jim wins!")
    end

    scenario "Shows the outcome of a drawing game" do
      sign_in_and_play_against_computer
      click_button "scissors"
      expect(page).to have_content("Draw!")
    end

    scenario "Shows the outcome of a winning game" do
      sign_in_and_play_against_computer
      click_button "paper"
      expect(page).to have_content("RPSbot wins!")
    end

  end

  context "2 player game" do

    scenario "Shows the outcome of a winning game" do
      sign_in_and_play_2_player
      click_button "rock"
      click_button "scissors"
      expect(page).to have_content("Jim wins!")
    end

    scenario "Shows the outcome of a drawing game" do
      sign_in_and_play_2_player
      click_button "scissors"
      click_button "scissors"
      expect(page).to have_content("Draw!")
    end

    scenario "Shows the outcome of a winning game" do
      sign_in_and_play_2_player
      click_button "paper"
      click_button "scissors"
      expect(page).to have_content("Bob wins!")
    end

  end

end

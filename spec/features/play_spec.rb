feature "Playing a game" do

  SEED = 999_999

  before do
    sign_in_and_play
  end

  scenario "I can view the options of Rock, Paper and Scissors" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "choosing a move" do
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end

  scenario "opponent's move 'Rock'" do
    click_button "Rock"
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

  scenario "opponent chooses a random option" do
    srand(SEED)
    click_button "Paper"
    expect(page).to have_content "Opponent chose Paper!"
  end

  context "End game scenarios" do

    before do
      srand(SEED)
    end

    scenario "You win" do
      click_button "Scissors"
      expect(page).to have_content "You win!"
    end

    scenario "You lose" do
      click_button "Rock"
      expect(page).to have_content "You lose!"
    end

    scenario "You draw" do
      click_button "Paper"
      expect(page).to have_content "You draw!"
    end

  end

end

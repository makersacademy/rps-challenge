
feature "playing a game" do
  SRANDOM_PLAY = 23435
  before do
    visit('/')
    fill_in :name, with: "Fran"
    click_button "Submit"
  end
  scenario "see the shape options" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "choose a shape" do
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end

  scenario "game choose 'Rock'" do
    click_button "Rock"
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

  scenario "game choose random option" do
    srand(SRANDOM_PLAY)
    click_button "Rock"
    expect(page).to have_content "Opponent chose Scissors"
  end

  context "game over"
    before do
      srand(SRANDOM_PLAY)
    end

    scenario "checks if I win" do
      click_button "Rock"
      expect(page).to have_content "You are the WINNER!"
    end

    scenario "checks if I lose" do
      click_button "Paper"
      expect(page).to have_content "You are a LOSER!"
    end

    scenario "checks if I draw" do
      click_button "Scissors"
      expect(page).to have_content "Draw... Play again!"
    end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end
end

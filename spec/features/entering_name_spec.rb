feature "Home page" do
  scenario "The home page displays the name of the game" do
    visit('/')
    expect(page).to have_content("Lets play Rock Paper Scissors!")
  end
end

feature "entering player name" do
  scenario "player enters their name and is taken to the game screen" do
    sign_in_and_play
    expect(page).to have_content("Choose your weapon, John")
  end
end

feature "Selecting a weapon" do
  scenario "player selects rock and gets a confirmation" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content("You have selected rock!")
  end

  scenario "player selects paper and gets a confirmation" do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content("You have selected paper!")
  end

  scenario "player selects scissors and gets a confirmation" do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content("You have selected scissors!")
  end
end

feature "Displaying the result of the game" do
  let(:opponent) {double :oponent}
  let(:game) {double :game}
  scenario "Player chooses rock, and the computer chooses paper." do
    sign_in_and_play
    click_button('rock')
    allow(opponent).to receive(:weapon).and_return(:paper)
    allow(game).to receive(:outcome).and_return("You lose!")
    allow(game).to receive(:message).and_return("Your opponent chose #{opponent.weapon}. #{game.outcome}")
    expect(page).to have_content(game.message)
  end
end

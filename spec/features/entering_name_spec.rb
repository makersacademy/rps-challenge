feature "Home page" do
  scenario "The home page displays the name of the game" do
    visit('/')
    expect(page).to have_content("Lets play Rock Paper Scissors!")
  end
end

feature "entering player name" do
  scenario "player enters their name and is taken to the game screen" do
    single_player_sign_in_and_play
    expect(page).to have_content("Choose your weapon, John")
  end
end

feature "Selecting a weapon" do
  scenario "player selects rock and gets a confirmation" do
    single_player_sign_in_and_play
    click_button('rock')
    expect(page).to have_content("You have selected rock!")
  end

  scenario "player selects paper and gets a confirmation" do
    single_player_sign_in_and_play
    click_button('paper')
    expect(page).to have_content("You have selected paper!")
  end

  scenario "player selects scissors and gets a confirmation" do
    single_player_sign_in_and_play
    click_button('scissors')
    expect(page).to have_content("You have selected scissors!")
  end
end

feature "Displaying the result of the game" do

  scenario "Player chooses rock, and the computer chooses paper." do
    allow_any_instance_of(Opponent).to receive(:weapon).and_return(:paper)
    single_player_sign_in_and_play
    click_button('rock')
    expect(page).to have_content("Your opponent chose paper. You lose!")
  end

  scenario "Player chooses rock, and the computer chooses scissors." do
    allow_any_instance_of(Opponent).to receive(:weapon).and_return(:scissors)
    single_player_sign_in_and_play
    click_button('rock')
    expect(page).to have_content("Your opponent chose scissors. You win!")
  end
end

feature "Playing again" do
  scenario "play again button gives you another game" do
    single_player_sign_in_and_play
    click_button('rock')
    click_button('play-again')
    expect(page).to have_content("Choose your weapon, John")
  end

  scenario "use start again to enter a new name" do
    single_player_sign_in_and_play
    click_button('rock')
    click_button('start-again')
    expect(page).to have_content("Lets play Rock Paper Scissors! Choose either single or multi-player")
  end
end

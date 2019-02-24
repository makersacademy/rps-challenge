require "capybara/rspec"
require_relative "./web_helpers.rb"

feature "displays welcome to player" do

  scenario "submit names of players" do
    visit("/")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end

  scenario "submit names of players" do
    visit("/")
    expect(page).to have_content "Choose number of players!"
  end

  scenario "submit names of players" do
    visit("/")
    click_button "2 players"
    expect(page).to have_content "Player1 name: "
    expect(page).to have_content "Player2 name: "
  end

  scenario "submit names of players for single player" do
    visit("/")
    click_button "1 player"
    expect(page).to have_content "Player1 name: "
  end

  scenario "submit names of players for multiplayer" do
    multiplayer_sign_in_and_play
    expect(page).to have_content "Player1 vs. Player2"
  end

  scenario "displays results of draw" do
    multiplayer_sign_in_and_play
    click_button("Rock")
    click_button("Rock")
    expect(page).to have_content "In this round of RPS: Player1 vs. Player2, the result is a DRAW!"
  end

  scenario "displays results of Player1 wins" do
    multiplayer_sign_in_and_play
    click_button("Rock")
    click_button("Scissors")
    expect(page).to have_content "In this round of RPS: Player1 vs. Player2, Player1 is the WINNER!"
  end

  scenario "displays results of Player2 wins" do
    multiplayer_sign_in_and_play
    click_button("Rock")
    click_button("Paper")
    expect(page).to have_content "In this round of RPS: Player1 vs. Player2, Player1 is the LOSER!"
  end

  scenario 'displays result of draw for multiplayer' do
    srand(67807)
    singleplayer_sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "In this round of RPS: Player1 vs. Computer, the result is a DRAW!"
  end

  scenario 'displays result of draw for multiplayer' do
    srand(67808)
    singleplayer_sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "In this round of RPS: Player1 vs. Computer, Player1 is the LOSER!"
  end

  scenario 'displays result of draw for multiplayer' do
    srand(67809)
    singleplayer_sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "In this round of RPS: Player1 vs. Computer, Player1 is the WINNER!"
  end

end

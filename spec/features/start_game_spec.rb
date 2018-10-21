require_relative 'test_helpers'

feature "Multiplayer game" do

  scenario "Home displays welcome message" do
    visit_home

    expect(page).to have_content 'Welcome to Rock-Paper-Scissors!'
  end

  scenario "Start game with names" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    expect(page).to have_content "Edyta vs Caio"
    expect(page).to have_content "Edyta's turn"
  end

  scenario "Player 1 selects a move" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_rock

    expect(page).to have_content "Edyta vs Caio"
    expect(page).to have_content "Caio's turn"
  end

  scenario "Player 1 wins (Scissors vs Paper)" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_scissors
    choose_paper

    expect(page).to have_content "Edyta (Scissors) won against Caio (Paper)!"
  end

  scenario "Player 1 wins (Rock vs Scissors)" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_rock
    choose_scissors

    expect(page).to have_content "Edyta (Rock) won against Caio (Scissors)!"
  end

  scenario "Player 1 wins (Paper vs Rock)" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_paper
    choose_rock

    expect(page).to have_content "Edyta (Paper) won against Caio (Rock)!"
  end

  scenario "Player 2 wins (Rock vs Paper)" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_rock
    choose_paper

    expect(page).to have_content "Caio (Paper) won against Edyta (Rock)!"
  end

  scenario "Player 2 wins (Paper vs Scissors)" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_paper
    choose_scissors

    expect(page).to have_content "Caio (Scissors) won against Edyta (Paper)!"
  end

  scenario "Player 2 wins (Scissors vs Rock)" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_scissors
    choose_rock

    expect(page).to have_content "Caio (Rock) won against Edyta (Scissors)!"
  end

  scenario "Scissors draw" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_scissors
    choose_scissors

    expect(page).to have_content "It's a Scissors draw!"
  end

  scenario "Rock draw" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_rock
    choose_rock

    expect(page).to have_content "It's a Rock draw!"
  end

  scenario "Paper draw" do
    start_game(player_1_name: "Edyta", player_2_name: "Caio")

    choose_paper
    choose_paper

    expect(page).to have_content "It's a Paper draw!"
  end

end

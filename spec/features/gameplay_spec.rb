# I would like to be able to play rock/paper/scissors

feature "in the game" do

  COMPUTER_SELECTS_PAPER_SEED = 314159265358979323

  scenario "see weapons" do
    fill_in_name_and_start_new_game
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "player chooses a weapon" do
    fill_in_name_and_start_new_game
    click_button("Rock")
    expect(page).to have_content("You selected Rock!")
  end

  scenario "computer chooses a weapon" do
    fill_in_name_and_start_new_game
    click_button("Rock")
    computer_selection_div = find(:css, "#computer_selection").text
    expect(possible_computer_selection_messages).to include computer_selection_div
  end

  scenario "computer chooses randomly" do
    fill_in_name_and_start_new_game
    srand(COMPUTER_SELECTS_PAPER_SEED)
    click_button("Rock")
    expect(page).to have_content("Computer selected Paper!")
  end

  context "when declaring a winner"
    scenario "player wins" do
      fill_in_name_and_start_new_game
      srand(COMPUTER_SELECTS_PAPER_SEED)
      click_button("Scissors")
      expect(page).to have_content("Player wins!")
    end

    scenario "computer wins" do
      fill_in_name_and_start_new_game
      srand(COMPUTER_SELECTS_PAPER_SEED)
      click_button("Rock")
      expect(page).to have_content("Computer wins!")
    end

    scenario "draw" do
      fill_in_name_and_start_new_game
      srand(COMPUTER_SELECTS_PAPER_SEED)
      click_button("Paper")
      expect(page).to have_content("It's a tie!")
    end
  
end
feature "ClassicMode" do
  scenario "selects Rock" do
    start_classic_game
    click_button "Rock"
    expect(page).to have_content "You picked Rock"
    expect(page).not_to have_content "You picked Paper"
    expect(page).not_to have_content "You picked Scissors"
  end

  scenario "selects Paper" do
    start_classic_game
    click_button "Paper"
    expect(page).not_to have_content "You picked R"
    expect(page).to have_content "You picked P"
    expect(page).not_to have_content "You picked S"
  end

  scenario "selects Scissors" do
    start_classic_game
    click_button "Scissors"
    expect(page).not_to have_content "You picked R"
    expect(page).not_to have_content "You picked P"
    expect(page).to have_content "You picked S"
  end
end

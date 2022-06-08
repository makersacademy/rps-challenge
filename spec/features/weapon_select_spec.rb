feature "player can select a weapon, single player" do
  scenario "player clicks rock button" do
    enter_and_submit_name_single
    click_button "Rock"
    expect(page).to have_text "Rosie selected Rock"
    expect(page).not_to have_text "Rosie selected Scissors"
    expect(page).not_to have_text "Rosie selected Paper"
  end

  scenario "player clicks paper button" do
    enter_and_submit_name_single
    click_button "Paper"
    expect(page).to have_text "Rosie selected Paper"
    expect(page).not_to have_text "Rosie selected Rock"
    expect(page).not_to have_text "Rosie selected Scissors"
  end

  scenario "player clicks scissors button" do
    enter_and_submit_name_single
    click_button "Scissors"
    expect(page).to have_text "Rosie selected Scissors"
    expect(page).not_to have_text "Rosie selected Rock"
    expect(page).not_to have_text "Rosie selected Paper"
  end
end

feature "player can select a weapon, multi player" do
  scenario "player_1 rock player_2 paper (P2)" do
    enter_and_submit_names_multi
    find_by_id('rock1').choose
    find_by_id('paper2').choose
    click_button "Submit"
    expect(page).to have_text "Rosie selected Rock"
    expect(page).to have_text "Sophie selected Paper"
  end
end
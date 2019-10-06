feature "Player move" do
  scenario "player has a choice of rock, paper or scissors" do
    sign_in
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "when player chooses Rock, result page confirms this" do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Melvin's move: Rock"
  end

  scenario "when player chooses Paper, result page confirms this" do
    sign_in
    click_button "Paper"
    expect(page).to have_content "Melvin's move: Paper"
  end

  scenario "when player chooses Scissors, result page confirms this" do
    sign_in
    click_button "Scissors"
    expect(page).to have_content "Melvin's move: Scissors"
  end
end

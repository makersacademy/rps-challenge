feature "Player move" do
  scenario "player has a choice of rock, paper or scissors" do
    sign_in
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "when player chooses Rock, page displays Rock" do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Rock"
  end

  scenario "when player chooses Paper, page displays Paper" do
    sign_in
    click_button "Paper"
    expect(page).to have_content "Paper"
  end

  scenario "when player chooses Scissors, page displays Scissors" do
    sign_in
    click_button "Scissors"
    expect(page).to have_content "Scissors"
  end
end

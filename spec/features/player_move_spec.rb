feature "Player move" do
  scenario "player has a choice of rock, paper or scissors" do
    sign_in
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "player chooses rock, paper or scissors" do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Rock"
  end
end

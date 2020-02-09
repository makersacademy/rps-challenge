feature "score changes depending on results" do
  scenario "player 1 score increases by 1 if player 1 wins" do
    sign_in
    click_on "Spock"
    click_on "Rock"
    expect(page).to have_content "diana's score: 1"
  end

  scenario "player 1 score does not change if there is a draw" do
    sign_in
    click_on "Spock"
    click_on "Spock"
    expect(page).to have_content "diana's score: 0"
  end
end
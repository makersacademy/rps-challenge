feature "winner is declared" do
  scenario "Winner or draw is declared after choices are made" do
    sign_in_and_play
    click_button "Rock"
    outcome = find_by_id("outcome").text
    expected_outcomes = ["Win wins!", "Computer wins!", "Draw!"]
    expect(expected_outcomes).to include outcome
  end
end

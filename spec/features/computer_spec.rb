feature "computer makes choices" do
  scenario "Computer makes choice and notification is given" do
    sign_in_and_play
    click_button "Rock"
    computer_choice = find_by_id("opponent-choice").text
    expected_outcomes = ["Computer chose Rock!", "Computer chose Paper!", "Computer chose Scissors!"]
    expect(expected_outcomes).to include computer_choice
  end
end
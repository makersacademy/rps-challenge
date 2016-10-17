feature "winner is revealed" do
  scenario "win, lose or tie" do
    choose_rock
    click_button "CONTINUE"
    outcome = find(:css, "#outcome").text
    expect(possible_outcomes).to include outcome
  end
end

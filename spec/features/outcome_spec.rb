feature "winner is revealed" do
  scenario "win, lose or tie" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content "You chose ROCK"
    click_button "CONTINUE"
    outcome = find(:css, "#outcome").text
    expect(possible_outcomes).to include outcome
  end
end

feature "Testing outcome" do
  scenario "Shows the winner" do
    submit_and_play
    click_button "Rock"
    expect(page).to have_content "RESULT"
  end

  scenario "Lets you play again" do
    submit_and_play
    click_button "Rock"
    expect(page).to have_button "Try Again"
  end
end

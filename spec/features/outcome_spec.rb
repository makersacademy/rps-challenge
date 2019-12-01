feature "outcome is shown" do

  scenario "winner is player 1" do
    srand(3)
    sign_in_and_play
    select("Rock", from: "choice")
    click_button "Submit"
    expect(page).to have_content("Harrison wins")
  end

  scenario "winner is computer" do
    srand(1)
    sign_in_and_play
    select("Rock", from: "choice")
    click_button "Submit"
    expect(page).to have_content("Computer wins")
  end

  scenario "players draw" do
    srand(2)
    sign_in_and_play
    select("Rock", from: "choice")
    click_button "Submit"
    expect(page).to have_content("Draw")
  end

end

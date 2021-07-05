feature "Display Winner" do
  scenario "Declare who wins between Player and Computer" do
    srand(4)
    sign_in_and_play

    select("Scissors", from: "player_choice")
    click_button "Submit"
    expect(page).to have_content "Draw"
  end
end

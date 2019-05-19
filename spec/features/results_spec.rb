feature "results" do
  scenario "it tells the user if they have won" do
    sign_in_and_play
    srand(2200)
    click_button("rock")
    expect(page).to have_content("Computer chose scissors! You win")
  end
end

feature "Game generates random option" do
  scenario "after player picks option, they can see the game's option" do
    single_sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("The computer picked")
  end
end

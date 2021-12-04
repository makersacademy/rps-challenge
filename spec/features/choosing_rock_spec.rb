feature "choosing the rock move" do
  scenario "sees the move he has picked" do
    sign_in_and_play
    click_button("ROCK")
    save_and_open_page
    expect(page).to have_content("You've picked ROCK!")
  end
end
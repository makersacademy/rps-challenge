feature "Play again button" do
  scenario "It sends user back to /start" do
    sign_in
    click_button("rock")
    click_button("Play again")
    expect(page).to have_content("Welcome to the jungle Kevin!")
  end
end

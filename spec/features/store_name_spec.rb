
feature "stores your name" do
  scenario "after signing in, you should see your name as player" do
    login_with_derek
    check_its_not_error_page
    expect(page).to have_content("Welcome to the game, Derek")
  end
end

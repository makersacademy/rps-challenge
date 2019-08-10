feature "game_page" do
  scenario "the user is greeted by their name" do
    sign_in
    expect(page).to have_content "Guillaume"
  end
end
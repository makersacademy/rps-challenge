feature "Entering name" do
  scenario "user is able to enter and submit his name" do
    visit '/'
    fill_in "Name", with: "Arunas"
    click_button "Play"
    expect(page).to have_content "Player 1: Arunas"
  end
end

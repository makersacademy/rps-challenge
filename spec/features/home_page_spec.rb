feature "home_page" do
  scenario "user can enter his name" do
    visit "/"
    expect(page).to have_field "name"
    expect(page).to have_button "Start the game!"
  end

  scenario "user is greeted by their name" do
    visit "/"
    fill_in "name", with: "Guillaume"
    click_on "Start the game!"
    expect(page).to have_content "Guillaume"
  end
end
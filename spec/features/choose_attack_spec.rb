
feature "after signing in, you choose attack" do
  scenario "after choosing rock it should confirm your choice" do
    visit "/"
    fill_in "Enter name", with: "Derek"
    click_button "Begin..."
    choose("rock")
    click_button "Ready to go"
    expect(page).not_to have_content("AABBYkjahskdh987289")
    expect(page).to have_content("Derek chose rock")
  end

end

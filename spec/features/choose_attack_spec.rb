
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

  scenario "rock is default" do
    visit "/"
    fill_in "Enter name", with: "Derek"
    click_button "Begin..."
    click_button "Ready to go"
    expect(page).not_to have_content("AABBYkjahskdh987289")
    expect(page).to have_content("Derek chose rock")
  end

  scenario "after choosing paper it should confirm your choice" do
    visit "/"
    fill_in "Enter name", with: "Derek"
    click_button "Begin..."
    choose("paper")
    click_button "Ready to go"
    expect(page).not_to have_content("AABBYkjahskdh987289")
    expect(page).to have_content("Derek chose paper")
  end

  scenario "after choosing scissors it should confirm your choice" do
    visit "/"
    fill_in "Enter name", with: "Derek"
    click_button "Begin..."
    choose("scissors")
    click_button "Ready to go"
    expect(page).not_to have_content("AABBYkjahskdh987289")
    expect(page).to have_content("Derek chose scissors")
  end

end

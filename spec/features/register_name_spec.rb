feature "Enter name" do
  scenario "register name" do
    register_name
    expect(page).to have_content "Gianluca you are now facing the champion of the arena"
  end

  scenario "page has Rock button" do
    register_name
    expect(page).to have_selector(:link_or_button, "Rock")
  end

  scenario "page has Paper button" do
    register_name
    expect(page).to have_selector(:link_or_button, "Paper")
  end

  scenario "page has Scissors button" do
    register_name
    expect(page).to have_selector(:link_or_button, "Scissors")
  end
end

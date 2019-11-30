feature "enter name" do
  scenario "allows the user to enter his name" do
    visit "/"
    fill_in "name", with: "Andrea"
    click_button "Enter your name"
    expect(page).to have_content "Welcome Andrea, let's start the game!"
  end
end

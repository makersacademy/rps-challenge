feature "Enter a name when starting the game" do
  scenario "Player starting the game is able to enter a name" do
    visit "/"
    expect(page).to have_text("Enter your name, warrior!")
  end
end

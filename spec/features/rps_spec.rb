feature "Greet Marketeer" do
  scenario "the home page greets the Marketeer and asks for a name" do
    homepage
    expect(page).to have_content "Welcome, Marketeer. What is your name?"
    greet_and_name
  end

  feature "Display Marketeer name" do
    scenario "the Marketeer's name is displayed on the screen and they can proceed to the game" do
      homepage
      greet_and_name
      visit("/name")
      expect(page).to have_content "Subomi has challenged RPS bot to a game"
      click_button "Proceed to the game room"
    end
  end
end

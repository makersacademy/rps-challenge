feature "Player is greeted by a welcome message on the landing page" do
  scenario "Player sees a greeting on the screen" do
    sign_in
    expect(page).to have_content "Welcome to the most incredible game in the world: Rock, Paper, Scissors!"
  end
  scenario "Player is invited to enter their name to register before playing" do
    sign_in
    expect(page).to have_content "Please enter your name to register before playing the game!"
  end
end

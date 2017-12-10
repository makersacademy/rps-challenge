feature "Signing Up" do
  scenario "Player is greeted to the game" do
    visit ("/")
    expect(page).to have_text ("Welcome to Rock-Paper-Scissor Online Game")
  end

  scenario "Player needs to enter their name" do
    visit ("/")
    expect(page).to have_field ("player_one_name")
  end

end

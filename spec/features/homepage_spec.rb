# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature "Homepage has a textbox for player's name" do
  scenario "Home page loads" do
    visit("/")
    expect(page).to have_content("Enter your name if you want to play Rock, Paper, Scissors")
  end
end

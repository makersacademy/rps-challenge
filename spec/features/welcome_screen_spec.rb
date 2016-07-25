feature 'welcome screen' do
  scenario 'it welcomes the player to the game and prompts to provide the name' do
    visit("/")
    expect(page).to have_content("Welcome to Rock, Paper, Scissors
    Tell us your name and press Submit to start the game !")
  end
end

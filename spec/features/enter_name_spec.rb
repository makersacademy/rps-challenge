feature "Enter player name" do
  scenario "there is a welcoming message for the user" do
    visit '/'
    message = "Crack your knuckles and get ready to play...\nRock, Paper, Scissors"
    expect(page).to have_content message
  end

  scenario "it lets you enter a player name and shows it on screen" do
    sign_in_and_play
    expect(page).to have_content "Hannah"
  end
end

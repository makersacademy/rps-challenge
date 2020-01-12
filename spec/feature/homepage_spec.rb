feature "Homepage" do
  scenario "Displays name of the game" do
    visit("/")
    expect(page).to have_content('Rock Paper Scissors Spock Lizard')
  end
  scenario "Gives user option to select single player" do
    visit("/")
    expect(page).to have_selector(:link_or_button, 'Single Player')
  end
  scenario "Gives user option to select multiplayer" do
    visit("/")
    expect(page).to have_selector(:link_or_button, 'Multiplayer')
  end
end

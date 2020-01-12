feature "Entering names" do
  scenario "Enter single player names" do
    visit("/")
    click_button('Single Player')
    expect(page).to have_content('Player 1 Name:')
  end
  scenario "Enter multiplayer names" do
    visit("/")
    click_button('Multiplayer')
    expect(page).to have_content('Player 2 Name:')
  end
  scenario "Lets user start game" do
    visit("/")
    click_button('Single Player')
    expect(page).to have_selector(:link_or_button, 'Start Game!')
  end
end

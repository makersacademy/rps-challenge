feature "game ends" do
  scenario "user clicks 'Quit' to end the game" do
    get_to_play_screen
    click_link "Quit"
    expect(page).to have_content "Many thanks for playing Maximus."
  end
end
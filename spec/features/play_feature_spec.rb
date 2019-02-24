feature "play game" do
  scenario "A player can play against the computer" do
    visit('/')
    fill_in :name, with: "Spidey"
    click_button("That's my name!")
    click_button("Rock")
    expect('/over').to have_content "Game Over"
  end
end

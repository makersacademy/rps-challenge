feature "Choosing multiplayer mode" do
  scenario "has the option to input two names and submit them" do
    pass_and_play

    expect(page).to have_content("Player 1 name")
    expect(page).to have_content("Player 2 name")
    expect(page).to have_button("Submit")
  end
end
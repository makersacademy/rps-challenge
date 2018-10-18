feature "name page" do
  it "Has a title" do
    play_game
    expect(page).to have_content("Please enter your name:")
  end

  it "Has a name form" do
    play_game
    expect(page).to have_selector(:button, "Submit")
  end
end

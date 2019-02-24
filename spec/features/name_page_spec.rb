feature "name page" do
  it "Has a title" do
    start_single_player
    expect(page).to have_content("Please enter your name")
  end

  it "Has a name form" do
    start_single_player
    expect(page).to have_selector(:button, "Submit")
  end

  it "Has no form for player two in Single Player mode" do
    start_single_player
    expect(page).not_to have_field("name_two")
  end

  it "Has form for player two in Multiplayer mode" do
    start_multiplayer
    expect(page).to have_field("name_two")
  end
end

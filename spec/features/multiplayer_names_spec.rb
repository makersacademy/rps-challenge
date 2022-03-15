feature "Selecting multiplayer and filling in names" do
  scenario "Multiplayer names page displays the users names" do
    pass_and_play_submit_names

    expect(page).to have_content "Chris vs Coding"
  end
end
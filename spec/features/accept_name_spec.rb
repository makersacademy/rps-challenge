feature "Starting game" do

  scenario "player enters name and is shown their name on play screen" do
    sign_in_and_play_computer
    expect(page).to have_content ("You're up Marvin!")
  end
end

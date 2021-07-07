feature "Enter a name when starting the game" do
  scenario "Player starting the game is able to enter a name" do
    sign_in_and_play
    expect(page).to have_text "The end is nigh, MIGHTY HENRY"
  end
end

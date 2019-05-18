feature "player name" do
  scenario "it allows player to submit their name" do
    sign_in_and_play
    expect(page).to have_content "Welcome to Rock Paper Scissors, Sam"
  end
end

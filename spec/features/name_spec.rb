feature "player name" do
  scenario "player enters name and it is displayed on screen" do
    sign_in_and_play

    expect(page).to have_content "Ellie has joined a game of Rock Paper Scissors"
  end
end



feature "ability to play again" do
  scenario "player plays again" do
    one_whole_game
    click_on("Play again")
    expect(page).to have_content("Pick your weapon")
  end
end

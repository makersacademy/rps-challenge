describe "Player 1 can enter their name", type: :feature do
  it "Puts the players name up in lights" do
    visit '/'
    fill_in "player1name", with: "someguy"
    click_on "Play!"
    expect(page).to have_content("someguy")
  end
end

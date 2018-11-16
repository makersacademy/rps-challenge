feature "a multiplayer game" do
  scenario "two players put their names in, and player 1 wins with ROCK" do
    visit "/"
    fill_in "charname", with: "Henry"
    fill_in "char2", with: "Sebastian"
    click_button "Begin the RAMPAGE"
    click_button "ROCK"
    click_button "SCISSORS"
    expect(page).to have_text "In the end, Henry emerged victorious, with their trusty rock"
  end
end

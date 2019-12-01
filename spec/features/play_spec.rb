feature "Play" do

  scenario "contains the player's choice" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    click_on "ROCK"
    expect(page).to have_content("You played : ROCK")
  end

  scenario "contains the player's choice" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    click_on "PAPER"
    expect(page).to have_content("You played : PAPER")
  end

  scenario "contains the player's choice" do
    visit "/"
    fill_in :player_name, with: "Eve"
    click_on "Start Game!"
    click_on "SCISSORS"
    expect(page).to have_content("You played : SCISSORS")
  end

end

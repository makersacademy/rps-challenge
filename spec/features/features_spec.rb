feature "Feature Tests" do
  scenario "can run main page" do
    visit("/")
    expect(page).to have_content "play rock-paper-scissors"
  end

  scenario "player can fill in their name" do
    visit("/")
    fill_in "player_name", with: "Luke Skywalker"
    click_on "Submit"
    expect(page).to have_content "Luke Skywalker vs. Computer"
  end

  feature "player can choose their shape" do
    scenario "player chooses rock" do
      visit("/")
      fill_in "player_name", with: "Luke Skywalker"
      click_on "Submit"
      choose "rock"
      click_on "Submit"
      expect(page).to have_content "You chose rock."
    end

    scenario "player chooses scissors" do
      visit("/")
      fill_in "player_name", with: "Luke Skywalker"
      click_on "Submit"
      choose "scissors"
      click_on "Submit"
      expect(page).to have_content "You chose scissors."
    end
  end
end
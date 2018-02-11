feature "Outcome page" do

  scenario "Shows the outcome of a winning game" do
    srand(65)
    visit('/')
    fill_in :player_1, with: "Jim"
    click_button "Submit"
    click_button "spock"
    expect(page).to have_content("You win!")
  end

  scenario "Shows the outcome of a drawing game" do
    srand(321)
    visit('/')
    fill_in :player_1, with: "Jim"
    click_button "Submit"
    click_button "lizard"
    expect(page).to have_content("Draw!")
  end

  scenario "Shows the outcome of a winning game" do
    srand(723)
    visit('/')
    fill_in :player_1, with: "Jim"
    click_button "Submit"
    click_button "rock"
    expect(page).to have_content("You lose!")
  end

end

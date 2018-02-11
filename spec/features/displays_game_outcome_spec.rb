feature "Outcome page" do

  scenario "Shows the outcome of a winning game" do
    srand(65)
    sign_in_and_play
    click_button "spock"
    expect(page).to have_content("You win!")
  end

  scenario "Shows the outcome of a drawing game" do
    srand(321)
    sign_in_and_play
    click_button "lizard"
    expect(page).to have_content("Draw!")
  end

  scenario "Shows the outcome of a winning game" do
    srand(723)
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content("You lose!")
  end

end

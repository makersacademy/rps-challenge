feature "winning" do

  before do
    srand(3)
  end

  scenario "winning message is displayed on results page" do
    sign_in_and_play
    choose("player_selection", id: "rock")
    click_button "Submit"
    expect(page).to have_content("You win!!!")
  end
end

feature "losing" do

  before do
    srand(1)
  end

  scenario "losing message is displayed on results page" do
    sign_in_and_play
    choose("player_selection", id: "rock")
    click_button "Submit"
    expect(page).to have_content("Computer wins. :-(")
  end
end

feature "tie" do

  before do
    srand(2)
  end

  scenario "losing message is displayed on results page" do
    sign_in_and_play
    choose("player_selection", id: "rock")
    click_button "Submit"
    expect(page).to have_content("It's a tie.")
  end
end

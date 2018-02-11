require './app'

feature "It knows the user's choice of weapon" do
  scenario "User chooses paper" do
    sign_in_as_john_and_choose_paper
    expect(page).to have_content("paper")
  end
end
feature "Two player game mode" do

  scenario "User wants a two player game" do
    sign_in_as_john_choose_paper_and_two_player_mode
    expect(page).to have_content "Enter your name player two"
  end

  scenario "Fred beats John" do
    sign_in_as_john_choose_paper_and_two_player_mode
    sign_in_as_fred_and_choose_scissors
    expect(page).to have_content "Sorry John, Fred wins"
  end
end

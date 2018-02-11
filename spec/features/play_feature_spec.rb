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
    expect(page).to have_content "Fred wins"
  end

end

feature "Add lizard and Spock" do
  scenario "lizard poisons Spock" do
    sign_in_as_john_choose_spock_and_two_player_mode
    sign_in_as_fred_and_choose_lizard
    expect(page).to have_content "Fred wins"
  end

  scenario "Spock vaporises rock" do
    sign_in_as_john_choose_spock_and_two_player_mode
    sign_in_as_fred_and_choose_rock
    expect(page).to have_content "John wins"
  end
end

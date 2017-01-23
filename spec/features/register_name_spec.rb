# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Register Name" do
  scenario "I would like to register player 1's name" do
    sign_in_one_player
    expect(page).to have_content "Player 1: Adrian"
  end
end

feature "Entering Player 1's names" do
  scenario "Input players' names" do
    sign_in_1_player
    expect(page).to have_content "Player 1: Shaun"
  end
end
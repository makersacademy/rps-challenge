feature "Entering Player 1's and 2's names" do
  scenario "Input players' names" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Shaun"
    expect(page).to have_content "Player 2: Low"
  end
end
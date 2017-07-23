feature "Entering player name" do
  scenario "Player can enter their name" do
    sign_in_and_play
    expect(page).to have_content "Holden Caulfield vs. HAL"
  end
end

feature "Entering player's name" do
  scenario "player can enter their name" do
    sign_in_and_play
    expect(page).to have_content 'Welcome to Rock-Paper-Scissors, Masha'
  end
end

feature "A registered player can see their name and see game options" do
  scenario "Allows to register name and see it on screen with a welcome message" do
    sign_in_and_register
    expect(page).to have_content "Welcome to the game Charlotte! choose your weapon to start the game against The Evil Computer:"
  end
  scenario "Player can see the rock button" do
    sign_in_and_register
    find_button('Rock').click
  end
  scenario "Player can see the paper button" do
    sign_in_and_register
    find_button('Paper').click
  end
  scenario "Player can see the paper button" do
    sign_in_and_register
    find_button('Scissors').click
  end
end

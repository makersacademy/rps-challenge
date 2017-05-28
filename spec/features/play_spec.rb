feature "Users can submit their name and seee game options" do
  scenario "Allows users to submit names and see them on a screen with a welcome message" do
    sign_in_and_register
    expect(page).to have_content "Welcome to the game Charlotte! choose your weapon to start the game against the evil computer:"
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
    find_button('Scissor').click
  end
end

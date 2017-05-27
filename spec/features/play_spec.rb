feature "Testing user enter names" do
  scenario "Allows users to submit names and see them on a screen" do
    sign_in_and_register
    expect(page).to have_content "Welcome to the game Charlotte!"
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
    scenario "Player is invited to click "
  end

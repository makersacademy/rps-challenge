feature "The player can choose a weapon of their choice" do
  scenario "Player can choose the rock button" do
    sign_in_and_register
    click_button('Rock')
    expect(page).to have_content "You chose rock"
  end
  scenario "Player can choose the paper button" do
    sign_in_and_register
    click_button('Paper')
    expect(page).to have_content "You chose paper"
  end
  scenario "Player can choose the scissors button" do
    sign_in_and_register
    click_button('Scissors')
    expect(page).to have_content "You chose scissors"
  end

  feature "The Evil computer can choose a weapon of their choice" do
    scenario "Computer's choice is displayed" do
      sign_in_and_register
      click_button('Scissors')
      # TODO work out how to test this feature for randomly selected computer method
      expect(page).to have_content "The Evil Computer chose"
    end
  end

  feature "The player is shown the outcome of the game" do
    scenario "the player wins" do
      sign_in_and_register
      click_button('Scissors')
      # TODO work out how to test this feature for randomly selected computer method
      expect(page).to have_content "The winner of the game is:"
    end
  end

  feature "Player can click a button to redirect them to restart the game " do
    scenario "Player can see the Reset Game button" do
      sign_in_and_register
      click_button('Rock')
      click_button('Reset Game')
      visit '/'
      expect(page).to have_content "Welcome to the most incredible game in the world: Rock, Paper, Scissors!"
    end
  end
end

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
      # allow_any_instance_of(Array).to receive(:sample).and_return('paper')
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

  feature "Player can click a button to play again without registering their name" do
    scenario "Player can see the Play Again button" do
      sign_in_and_register
      click_button('Scissors')
      click_button('Play Again')
      visit '/play'
      expect(page).to have_content "Welcome to the game Charlotte! choose your weapon to start the game against The Evil Computer:"
    end
  end

  feature "A registered player who has played the game once can save their game and exit" do
    scenario "Player can see a save game button" do
      sign_in_and_register
      find_button('Scissors').click
      find_button('Save Game').click
      visit '/exit'
      expect(page).to have_content "Thanks you've successfully saved your game for next time!"
    end
  end
end

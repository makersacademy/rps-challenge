feature "no selection made for a game choice" do

  context "1 Player game vs computer" do

    scenario "Play is pressed, no selection made" do
      computer_and_sign_on
      click_button('Play')
      expect(page).to have_content 'Bob, are you ready to play?'
    end
  end

  context "2 Player game" do

    scenario "Player 1 pressed play, no selection made" do
      human_and_sign_on
      click_button('Play')
      expect(page).to have_content 'Bob, are you ready to play?'
    end

    scenario "Player 2 pressed play, no selection made" do
      human_and_sign_on
      choose('rock')
      click_button('Play')
      click_button('Play')
      expect(page).to have_content 'Fred, are you ready to play?'
    end
  end

end

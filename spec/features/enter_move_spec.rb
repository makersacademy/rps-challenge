feature "Enter move" do
  context "game is a draw" do
    scenario "when player selects 'rock' and computer selects 'rock'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      choose('rock')
      click_button('Play')
      expect(page).to have_content "Human chose Rock! Computer chose Rock!"
      expect(page).to have_content "It's a draw!"
    end

    scenario "when player selects 'paper' and computer selects 'paper'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      choose('paper')
      click_button('Play')
      expect(page).to have_content "Human chose Paper! Computer chose Paper!"
      expect(page).to have_content "It's a draw!"
    end

    scenario "when player selects 'scissors' and computer selects 'scissors'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      choose('scissors')
      click_button('Play')
      expect(page).to have_content "Human chose Scissors! Computer chose Scissors!"
      expect(page).to have_content "It's a draw!"
    end
  end

  context "player wins" do
    scenario "when player selects 'rock' and computer selects 'scissors'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      choose('rock')
      click_button('Play')
      expect(page).to have_content "Human chose Rock! Computer chose Scissors!"
      expect(page).to have_content "You win!"
    end

    scenario "when player selects 'paper' and computer selects 'rock'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      choose('paper')
      click_button('Play')
      expect(page).to have_content "Human chose Paper! Computer chose Rock!"
      expect(page).to have_content "You win!"
    end

    scenario "when player selects 'scissors' and computer selects 'paper'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      choose('scissors')
      click_button('Play')
      expect(page).to have_content "Human chose Scissors! Computer chose Paper!"
      expect(page).to have_content "You win!"
    end
  end

  context "player loses" do
    scenario "when player selects 'rock' and computer selects 'paper'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      choose('rock')
      click_button('Play')
      expect(page).to have_content "Human chose Rock! Computer chose Paper!"
      expect(page).to have_content "You lose!"
    end

    scenario "when player selects 'paper' and computer selects 'scissors'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      choose('paper')
      click_button('Play')
      expect(page).to have_content "Human chose Paper! Computer chose Scissors!"
      expect(page).to have_content "You lose!"
    end

    scenario "when player selects 'scissors' and computer selects 'rock'" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      choose('scissors')
      click_button('Play')
      expect(page).to have_content "Human chose Scissors! Computer chose Rock!"
      expect(page).to have_content "You lose!"
    end
  end
end

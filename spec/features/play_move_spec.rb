feature "playing a move" do

  context "1 Player game vs computer" do 

    before(:each) do
      allow_any_instance_of(BotPlayer).to receive(:weapon).and_return(:rock)
    end

    scenario "the player wins" do
      computer_and_sign_on
      one_player_plays('paper')
      expect(page).to have_content "Bob played PAPER"
      expect(page).to have_content "Computer played ROCK"
      expect(page).to have_content "Bob wins!"
    end

    scenario "the player loses" do
      computer_and_sign_on
      one_player_plays('scissors')
      expect(page).to have_content "Bob played SCISSORS"
      expect(page).to have_content "Computer played ROCK"
      expect(page).to have_content "Computer wins!"
    end

    scenario "the player draw" do
      computer_and_sign_on
      one_player_plays('rock')
      expect(page).to have_content "Bob played ROCK"
      expect(page).to have_content "Computer played ROCK"
      expect(page).to have_content "You draw!"
    end
  end

  context "2 Player game" do
    scenario "Player 1 one makes a move" do
      human_and_sign_on
      choose('rock')
      click_button('Play')
      expect(page).to have_content "Fred, are you ready to play?"
    end

    scenario "Player 1 wins" do
      human_and_sign_on
      two_players_play('rock','scissors')
      expect(page).to have_content "Bob played ROCK"
      expect(page).to have_content "Fred played SCISSORS"
      expect(page).to have_content "Bob wins!"
    end

    scenario "Player 2 wins" do
      human_and_sign_on
      two_players_play('rock','paper')
      expect(page).to have_content "Bob played ROCK"
      expect(page).to have_content "Fred played PAPER"
      expect(page).to have_content "Fred wins!"
    end

    scenario "It's a draw" do
      human_and_sign_on
      two_players_play('rock','rock')
      expect(page).to have_content "Bob played ROCK"
      expect(page).to have_content "Fred played ROCK"
      expect(page).to have_content "You draw!"
    end
  end

end

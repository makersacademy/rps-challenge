describe 'RockPaperScissors', :type => :feature do
  context '1 player game' do
    it 'takes names and shows them on screen' do
      sign_in_and_play_one_player
      expect(page).to have_content "Hi Joe!"
    end

    it 'Player 1 gets confirmation of attacking Player 2' do
      sign_in_and_play_one_player
      click_button('rock')
      expect(page).to have_content "Joe chose rock!"
    end

    it "computer chooses something at random" do
      sign_in_and_play_one_player
      click_button('rock')
      expect(page).to have_content "Computer chose"
    end

    it "computer chooses something at random" do
      sign_in_and_play_one_player
      click_button('rock')
    end

    it "should return to start screen" do
      sign_in_and_play_one_player
      click_button('rock')
      click_button('Play Again')
      expect(page).to have_content "Please select number of players!"
    end
  end

  context '2 player game' do
    it "should greet player 1 and ask for weapon choice" do
      sign_in_and_play_two_player
      expect(page).to have_content "Hi Joe! Choose your weapon!"
    end

    it "should greet player 2 and ask for weapon choice" do
      sign_in_and_play_two_player
      click_button('rock')
      expect(page).to have_content "Hi Tom! Choose your weapon!"
    end

    it "should congratulate the winner" do
      sign_in_and_play_two_player
      click_button('rock')
      click_button('scissors')
      expect(page).to have_content "Joe chose rock! Tom chose scissors! Result = Joe wins!!"
    end

    it "should return to start screen" do
      sign_in_and_play_two_player
      click_button('rock')
      click_button('scissors')
      click_button('Play Again')
      expect(page).to have_content "Please select number of players!"
    end
  end
end

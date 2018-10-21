feature "Enter player name" do

  context "RPS" do
    context "one player mode" do
      scenario "submitted name should appear on screen in 1 player mode" do
        one_player_sign_in_and_play
        expect(page).to have_content "Rock, Paper, Scissors! Imtiyaz vs Computer"
      end

      context "no name entered" do
        scenario "should raise an error" do
          visit '/'
          click_button '1 Player'
          click_button 'Submit'
          expect(page).to have_content "Error! A name must be entered"
        end
      end
    end

    context "two player mode" do
      scenario "submitted names should appear on screen in 2 player mode" do
        two_player_sign_in_and_play
        expect(page).to have_content "Rock, Paper, Scissors! Mario vs Luigi"
      end

      context "'Computer' entered into a name field" do
        scenario "should raise error" do
          visit '/'
          click_button '2 Player'
          fill_in(:player_1_name, with: "Mario")
          fill_in(:player_2_name, with: "Computer")
          click_button 'Submit'
          expect(page).to have_content("Error! 'Computer' is not a valid name")
        end
      end
    end
  end
end

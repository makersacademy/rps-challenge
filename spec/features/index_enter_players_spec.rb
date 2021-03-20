describe RPS do
  feature "#index.erb" do
    context "for a game of two players" do
      scenario "should allow the players to enter their names and a game type of rps" do
        enter_names_rps
        expect(page).to have_content('Gordon vs. Caroline')
      end

      scenario "should allow the players to enter their names and a game type of rpsls" do
        enter_names_rpsls
        expect(page).to have_content('Gordon vs. Caroline')
      end
    end
    context "for a game against the computer" do
      scenario "should allow the player to enter their name and a game type of rps" do
        enter_names_rps_computer
        expect(page).to have_content('Gordon vs. Computer')
        expect(Game.current_game.player2).to be_an_instance_of(Computer)
      end

      scenario "should allow the player to enter their name and a game type of rpsls" do
        enter_names_rpsls_computer
        expect(page).to have_content('Gordon vs. Computer')
        expect(Game.current_game.player2).to be_an_instance_of(Computer)
      end
    end
  end
end

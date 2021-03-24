describe RPS do
  feature "#play.erb" do
    context "for a rps game" do
      scenario "should allow the players to enter moves" do
        enter_names_rps
        two_player_moves_rps
        expect(page).to have_content('Scissors vs. Rock')
      end
      context "against the computer" do
        scenario "should allow the player to enter a move" do
          enter_names_rps_computer
          allow(Game.current_game.player2).to receive(:move).and_return(1)
          single_move_rps
          expect(page).to have_content('Scissors vs. Rock')
        end
      end
    end
    context "for a rpsls game" do
      scenario "should allow the players to enter moves" do
        enter_names_rpsls
        two_player_moves_rpsls
        expect(page).to have_content('Spock vs. Lizard')
      end
      context "against the computer" do
        scenario "should allow the player to enter a move" do
          enter_names_rpsls_computer
          allow(Game.current_game.player2).to receive(:move).and_return(5)
          single_move_rpsls
          expect(page).to have_content('Spock vs. Lizard')
        end
      end
    end
  end
end

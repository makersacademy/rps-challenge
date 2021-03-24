describe RPS do
  feature "#result.erb" do
    context "for rps games" do
      scenario "should show who has won the match" do
        enter_names_rps
        two_player_moves_rps
        expect(page).to have_content('Caroline wins!')
      end

      scenario "should show the match was a draw" do
        enter_names_rps
        single_move_rps
        single_move_rps
        expect(page).to have_content('It\'s a Draw!')
      end

      context "against the computer" do
        scenario "should show who has won the match" do
          enter_names_rps_computer
          allow(Game.current_game.player2).to receive(:move).and_return(1)
          single_move_rps
          expect(page).to have_content('Computer wins!')
        end

        scenario "should show the match was a draw" do
          enter_names_rps_computer
          allow(Game.current_game.player2).to receive(:move).and_return(3)
          single_move_rps
          expect(page).to have_content('It\'s a Draw!')
        end
      end
    end

    context "for rpsls games" do
      scenario "should show who has won the match " do
        enter_names_rpsls
        two_player_moves_rpsls
        expect(page).to have_content('Caroline wins!')
      end

      scenario "should show the match was a draw " do
        enter_names_rpsls
        single_move_rpsls
        single_move_rpsls
        expect(page).to have_content('It\'s a Draw!')
      end
    
      context "against the computer" do
        scenario "should show who has won the match" do
          enter_names_rpsls_computer
          allow(Game.current_game.player2).to receive(:move).and_return(5)
          single_move_rpsls
          expect(page).to have_content('Computer wins!')
        end

        scenario "should show the match was a draw" do
          enter_names_rpsls_computer
          allow(Game.current_game.player2).to receive(:move).and_return(4)
          single_move_rpsls
          expect(page).to have_content('It\'s a Draw!')
        end
      end
    end
  end
end

describe RPS do
  feature "#gameover.erb" do
    context "for rps games" do
      scenario "should show who has won the entire game" do
        enter_names_rps
        2.times do
          two_player_moves_rps
          click_button 'Next round'
        end
        two_player_moves_rps
        expect(page).to have_content('Caroline wins the game!')
      end

      context "against the computer" do
        scenario "should show who has won the entire game" do
          enter_names_rps_computer
          2.times do
            allow(Game.current_game.player2).to receive(:move).and_return(1)
            single_move_rps
            click_button 'Next round'
          end
          single_move_rps
          expect(page).to have_content('Computer wins the game!')
        end
      end
    end

    context "for rpsls games" do
      scenario "should show who has won the entire game" do
        enter_names_rpsls
        4.times do
          two_player_moves_rpsls
          click_button 'Next round'
        end
        two_player_moves_rpsls
        expect(page).to have_content('Caroline wins the game!')
      end
    
      context "against the computer" do
        scenario "should show who has won the entire game" do
          enter_names_rpsls_computer
          4.times do
            allow(Game.current_game.player2).to receive(:move).and_return(5)
            single_move_rpsls
            click_button 'Next round'
          end
          single_move_rpsls
          expect(page).to have_content('Computer wins the game!')
        end
      end
    end
  end
end

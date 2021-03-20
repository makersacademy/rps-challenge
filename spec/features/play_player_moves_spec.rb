describe RPS do
  feature "#play.erb" do
    scenario "should allow the players to enter a move in a rps game" do
      enter_names_rps
      two_player_moves_rps
      expect(page).to have_content('Scissors vs. Rock')
    end

    scenario "should allow the players to enter a move in a rpsls game" do
      enter_names_rpsls
      two_player_moves_rpsls
      expect(page).to have_content('Spock vs. Lizard')
    end

    scenario "should allow the player to enter a move in a rps game" do
      enter_names_rps_computer
      single_move_rps
      expect(page).to have_content('Gordon vs. Computer')
    end

    scenario "should allow the player to enter a move in a rpsls game" do
      enter_names_rpsls_computer
      single_move_rpsls
      expect(page).to have_content('Gordon vs. Computer')
    end
  end
end

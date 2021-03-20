describe RPS do
  feature "#play.erb" do
    scenario "should allow the players to enter a move in a rps game" do
      enter_names_rps
      select('Scissors', :from => 'moves')
      click_button 'Submit'
      select('Rock', :from => 'moves')
      click_button 'Submit'
      expect(page).to have_content('Gordon vs. Caroline')
    end

    scenario "should allow the players to enter a move in a rpsls game" do
      enter_names_rpsls
      select('Spock', :from => 'moves')
      click_button 'Submit'
      select('Lizard', :from => 'moves')
      click_button 'Submit'
      expect(page).to have_content('Gordon vs. Caroline')
    end

    scenario "should allow the player to enter a move in a rps game" do
      enter_names_rps_computer
      select('Scissors', :from => 'moves')
      click_button 'Submit'
      expect(page).to have_content('Gordon vs. Computer')
    end

    scenario "should allow the player to enter a move in a rpsls game" do
      enter_names_rpsls_computer
      select('Spock', :from => 'moves')
      click_button 'Submit'
      expect(page).to have_content('Gordon vs. Computer')
    end
  end
end

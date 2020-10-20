describe "feature tests" do

  feature 'Visible names' do
    scenario 'Player can enter name in a form and see it on screen' do
      sign_in_and_play
      expect(page).to have_content 'Isaac'
    end
  end

  feature 'View three choices (rock, paper, scissors)' do
    scenario 'Player can choose from three buttons: rock, paper, and scissors' do
      sign_in_and_play
      expect(page).to have_button ('ROCK')
      expect(page).to have_button('PAPER')
      expect(page).to have_button('SCISSORS')
    end
  end

  feature "result page" do
    scenario 'Player is taken to the result page after choosing rock, paper, or scissors' do
      sign_in_and_play
      click_button('ROCK')
      expect(page).to have_text('RESULT')
    end
    scenario "The results page accurately reflects the player's choice of rock" do
      sign_in_and_play
      click_button('ROCK')
      expect(page).to have_text('ROCK')
    end
    scenario "The results page accurately reflects the player's choice of paper" do
      sign_in_and_play
      click_button('PAPER')
      expect(page).to have_text('PAPER')
    end
    scenario "The results page accurately reflects the player's choice of scissors" do
      sign_in_and_play
      click_button('SCISSORS')
      expect(page).to have_text('SCISSORS')
    end
  end

  feature "Winning and losing" do
    scenario "Player chooses rock, computer chooses paper. Computer wins." do
      sign_in_and_play
      srand(1)
      click_button('ROCK')
      expect(page).to have_text('YOU LOST, GET OVER IT')
    end
    scenario "Player chooses scissors, computer chooses scissors. DRAW." do
      sign_in_and_play
      srand(5)
      click_button('SCISSORS')
      expect(page).to have_text("It's a draw")
    end
    scenario "Player chooses paper, computer chooses rock. Player wins." do
      sign_in_and_play
      srand(2)
      click_button('PAPER')
      expect(page).to have_text("You won, ok. Big deal.")
    end
  end

end

feature "User Story 2 - Playing Roshambo - Part 1: choose your weapon: " do
  scenario "after choosing to play should be able to choose rock" do
    named_player
    expect { choose('r') }.to_not raise_error
  end
  scenario "after choosing to play should be able to choose paper" do
    named_player
    expect { choose('p') }.to_not raise_error
  end
  scenario "after choosing to play should be able to choose scissors" do
    named_player
    expect { choose('s') }.to_not raise_error
  end
  scenario "You should be able to tell the paper button is for paper." do
    named_player
    expect(page).to have_content('Paper, the stuff history books are made of.')
  end
  scenario "You should be able to tell the scissors option is for scissors" do
    named_player
    expect(page).to have_content('Scissors, sharp yet fragile.')
  end
  scenario "You should be able to tell the rock option is for rock." do
    named_player
    expect(page).to have_content("Rock, an ancient but powerful weapon.")
  end
end

feature "User story 2 - Playing Roshambo - Part 2: did I win!?: " do
  scenario "choosing an option and clicking submit should take me to a results page." do
    named_player
    choose('r')
    click_button('submit')
    expect(page).to have_current_path('/results')
  end
  scenario "results page should announce the winner" do
    named_player
    choose('r')
    click_button('submit')
    expect(page).to have_content("The Winner is: #{Game.current_game.janken}") 
  end
end

feature "Can I play more than once?: " do
  scenario " Should be able to play another game after seeing the results of the current game." do
    named_player
    choose('r')
    click_button('submit')
    expect(page).to have_button("Play again?")
  end
end

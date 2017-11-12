feature "index page allows you to regsiter name" do
  scenario "prompts choosing a type of name" do
    visit "/"
    expect(page).to have_content "What kind of game would you like to play?"
  end
  scenario "allows you to submit a a single_player game" do
    visit "/"
    expect(page).to have_button("Single Player")
  end
  scenario "allows you to submit a a multi_player game" do
    visit "/"
    expect(page).to have_button("Multi Player")
  end
end

feature "single_player page allows to sign_in" do
  scenario "prompts entering a name" do
    visit "/single_player"
    expect(page).to have_content("Player 1 Name:")
  end
  scenario "allows you to submit a form" do
    visit "/single_player"
    expect(page).to have_button("Submit")
  end
end

feature "multi_player page allows two players to sign_in" do
  scenario "prompts entering a name for player 1" do
    visit "/multi_player"
    expect(page).to have_content("Player 1 Name:")
  end
  scenario "prompts entering a name for player 1" do
    visit "/multi_player"
    expect(page).to have_content("Player 2 Name:")
  end
  scenario "allows you to submit a form" do
    visit "/multi_player"
    expect(page).to have_button("Submit")
  end
end

feature "single play page allows player to make a choice" do
  before { sign_in_single_player }
  scenario "allows user to select rock" do
    expect(page).to have_content "Rock"
  end
  scenario "allows user to select paper" do
    expect(page).to have_content "Paper"
  end
  scenario "allows user to select scissors" do
    expect(page).to have_content "Scissors"
  end
  scenario "allows user to submit the choice" do
    expect(page).to have_button("Submit")
  end
end

feature "submiting a choice sends us to a results page in single player mode" do
  before { sign_in_single_player }
  scenario "any selection takes us to results page" do
    choose("choice_rock")
    click_button("Submit")
    expect(page).to have_content("Thanks for playing a round of Rock-Paper-Scissors!")
  end
  scenario "choice rock shows rock on the results page" do
    choose("choice_rock")
    click_button("Submit")
    expect(page).to have_content("rock")
  end
end

feature "multi-play page allows player1 to make a choice" do
  before { sign_in_multi_player }
  scenario "allows p1 to select rock" do
    expect(page).to have_content "Rock"
  end
  scenario "allows p1 to select paper" do
    expect(page).to have_content "Paper"
  end
  scenario "allows p1 to select scissors" do
    expect(page).to have_content "Scissors"
  end
  scenario "allows p1 to submit the choice" do
    expect(page).to have_button("Submit")
  end
end

feature "multi-play page allows player2 to make a choice" do
  before { sign_in_multi_player }
  before { click_button("Submit") }
  scenario "allows p2 to select rock" do
    expect(page).to have_content "Rock"
  end
  scenario "allows p2 to select paper" do
    expect(page).to have_content "Paper"
  end
  scenario "allows p2 to select scissors" do
    expect(page).to have_content "Scissors"
  end
  scenario "allows p2 to submit the choice" do
    expect(page).to have_button("Submit")
  end
end

feature "submiting a choice sends us to a results page in multi-player mode" do
  before { sign_in_multi_player }
  before { choose("choice_rock") }
  before { click_button("Submit") }
  before { choose("choice_paper") }
  before { click_button("Submit") }

  scenario "any selection takes us to results page" do
    expect(page).to have_content("Thanks for playing a round of Rock-Paper-Scissors!")
  end
  scenario "choice p1 is rock, rock shows on the results page" do
    expect(page).to have_content("rock")
  end
  scenario "choice p2 is paper, paper shows on the results page" do
    expect(page).to have_content("rock")
  end
end

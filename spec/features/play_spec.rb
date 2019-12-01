feature "Playing the game" do
  scenario "should show the message 'It is a tie!' if both computer and player choose :rock" do
    srand(2) # Computer chooses :rock
    visit_and_enter_name
    play_a_game # Player chooses :rock
    expect(page).to have_content "It is a tie! Rock matches Rock!"
  end

  scenario "should show the message 'Congratulations, you won! Rock beats Scissors!' if the user chooses :rock and the computer :scissors" do
    srand(3) # Computer chooses :scissors
    visit_and_enter_name
    play_a_game # Player chooses :rock
    expect(page).to have_content "Congratulations, you won! Rock beats Scissors"
  end

  scenario "should show the message 'Bad luck, you lost! Rock loses to Paper!' if the user chooses :rock and the computer :paper" do
    srand(10) # Computer chooses :paper
    visit_and_enter_name
    play_a_game # Player chooses :rock
    expect(page).to have_content "Bad luck, you lost! Rock loses to Paper"
  end
end

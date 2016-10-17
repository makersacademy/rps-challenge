
feature "playing a game" do
  scenario "player can see rock, paper, scissors" do
    sign_in_and_play
    expect(page).to have_button "ROCK"
    expect(page).to have_button "PAPER"
    expect(page).to have_button "SCISSORS"
  end
end

feature "pick item" do
  scenario "player can choose rock, paper, scissors" do
    choose_rock
    expect(page).to have_content "CONTINUE"
  end
end

feature "game picks item" do
  scenario "game chooses rock" do
    choose_rock
    click_button "CONTINUE"
    choice = find(:css, "#opponent").text
    expect(possible_choices_computer).to include choice
  end
end

 feature "game picks item" do
   scenario "game chooses a random option" do
     choose_rock
     click_button "CONTINUE"
     choice = find(:css, "#opponent").text
     expect(possible_choices_computer).to include choice
  end
end

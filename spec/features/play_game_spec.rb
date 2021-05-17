feature "play game" do
  scenario "select rock" do
    choose_rock
    expect(page).to have_content "John's choice: Rock"
  end

  scenario "select paper" do
    choose_paper
    expect(page).to have_content "John's choice: Paper"
  end

  scenario "select scissors" do
    choose_scissors
    expect(page).to have_content "John's choice: Scissors"
  end

  scenario "computer's choice" do
    srand(4)
    choose_rock
    expect(page).to have_content "Computer's choice: Scissors"
  end

  scenario "player wins" do
    srand(4)
    choose_rock
    expect(page).to have_content "John wins!!"
  end

  scenario "computer wins" do
    srand(4)
    choose_paper
    expect(page).to have_content "The computer wins!!"
  end

  scenario "draw" do
    srand(4)
    choose_scissors
    expect(page).to have_content "It's a draw"
  end
end

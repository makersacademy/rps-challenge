feature "play page:" do

  before { submit_single_name("Ant") }

  scenario "user sees name" do
    expect(page).to have_content "Ant's turn"
  end

  scenario "user sees three options" do
    expect(page).to have_content "ROCK"
    expect(page).to have_content "PAPER"
    expect(page).to have_content "SCISSORS"
  end

  scenario "user can choose rock" do
    choose_rock
  end

  scenario "user can choose paper" do
    choose_paper
  end

  scenario "user can choose scissors" do
    choose_scissors
  end

end

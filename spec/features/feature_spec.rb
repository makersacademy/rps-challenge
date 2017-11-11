require_relative "../../rps.rb"

Capybara.app = Rps

feature "visiting the index/home page" do
  scenario "user visits the idex page to start new game" do
    visit('/')
    expect(page).to have_content("ROCK - PAPER - SCISSORS!")
  end
  scenario "user wants to enter their name" do
    visit('/')
    expect(page).to have_content("Enter your name and click START to begin")
  end
end

feature "having entered name we go to play page" do
  scenario "user enters their name and displayed on play page" do
    sign_in_and_play
    expect(page).to have_content("LEWIS")
  end
  scenario "user enters their name and options are displayed" do
    sign_in_and_play
    expect(page).to have_content("ROCK PAPER SCISSORS")
  end
end

feature "game scenarios" do
  scenario "player picks ROCK" do
    pick_rock
    expect(page).to have_content("ROCK")
  end
  scenario "player picks PAPER" do
    pick_paper
    expect(page).to have_content("PAPER")
  end
  scenario "player picks scissors" do
    pick_scissors
    expect(page).to have_content("SCISSORS")
  end
end

require_relative "../../rps.rb"

Capybara.app = Rps

feature "visiting the index/home page" do
  scenario "user visits the idex page to start new game" do
    visit('/')
    expect(page).to have_content("ROCK - PAPER - SCISSORS!")
  end
end

feature "having entered name we go to play page" do
  scenario "user enters their name and displayed on play page" do
    sign_in_and_play
    expect(page).to have_content("LEWIS")
  end
  scenario "user enters their name and options are displayed" do
    sign_in_and_play
    expect(page).to have_content("Make your selection!")
  end
end

feature "game scenarios" do
  scenario "player picks ROCK" do
    pick_rock
    expect(page).to have_content(:rock)
  end
  scenario "player picks PAPER" do
    pick_paper
    expect(page).to have_content(:paper)
  end
  scenario "player picks scissors" do
    pick_scissors
    expect(page).to have_content(:scissors)
  end
end

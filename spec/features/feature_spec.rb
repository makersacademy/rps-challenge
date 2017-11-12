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

feature "multiplayer" do
  scenario "user selects multiplayer" do
    visit('/')
    click_button("MULTIPLAYER")
    expect(page).to have_content("Multiplayer! It's on!")
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
  scenario "player picks rock and comp picks scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    pick_rock
    expect(page).to have_content("You win! rock beats scissors!")
  end
  scenario "player picks scissors `and comp picks scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    pick_scissors
    expect(page).to have_content("It's a draw, you both picked scissors!")
  end
  scenario "player picks scissors `and comp picks scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    pick_rock
    expect(page).to have_content("You lose! rock gets beaten by paper!")
  end
end

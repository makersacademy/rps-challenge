require './controller'

RSpec.feature "Playing with computer", :type => :feature do
  scenario "Possible options appear on the screen" do
    start
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "Player can play by choosing an option" do
    start
    attack
    expect(page).to have_button("Back to the game")
  end

  scenario "Computer chooses a random option" do
    start
    allow(Game::OPTIONS).to receive(:sample).and_return(:scissors)
    attack
    message = "Your opponent chose scissors!"
    expect(page).to have_content(message)
  end

  scenario "Computer wins" do
    start
    allow(Game::OPTIONS).to receive(:sample).and_return(:paper)
    attack
    message = "Paper beats rock, you lose, Pea!"
    expect(page).to have_content(message)
  end

  scenario "Player wins" do
    start
    allow(Game::OPTIONS).to receive(:sample).and_return(:scissors)
    attack
    message = "Rock beats scissors, congratulations on your victory, Pea!"
    expect(page).to have_content(message)
  end

  scenario "Draw" do
    start
    allow(Game::OPTIONS).to receive(:sample).and_return(:rock)
    attack
    message = "You both chose rock, this means draw!"
    expect(page).to have_content(message)
  end
end

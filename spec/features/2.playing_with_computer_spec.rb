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
    click_button("Rock")
    expect(page).to have_button("Back to the game")
  end

  # scenario "Computer chooses a random option" do
  #   start
  #   click_button("Rock")
  #   allow(@game).to receive(:play).and_return("scissors")
  #   message = "Your opponent chose scissors!"
  #   expect(page).to have_content(message)
  # end
end

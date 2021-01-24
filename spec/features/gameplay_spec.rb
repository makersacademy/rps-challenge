require 'game'

feature "Gameplay" do

  scenario "Game plays out and displays result" do
    choose_rock
    click_on("start")
    expect(page).to have_content("Rock versus")
    @game = Game.create("Rock")
    @game.play
    click_on("fight")
    expect(page).to have_content(@game.result)
  end

  scenario "Game returns to title screen" do
    choose_rock
    click_on("start")
    expect(page).to have_content("Rock versus")
    @game = Game.create("Rock")
    @game.play
    click_on("fight")
    expect(page).to have_content(@game.result)
    click_on("finish")
    expect(page).to have_content("Super Rock-Paper-Scissors Turbo Alpha: Ultimate Grudge Match")
  end

end

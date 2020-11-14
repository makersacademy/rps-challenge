require 'capybara/rspec'

feature "Welcome Page" do
  scenario "The welcome page displays a greeting" do
    visit('/')
    expect(page).to have_content(/ROCK, PAPER, SCISSORS/)
  end

  scenario "Choice can be made between playing against AI or another player" do
    visit('/')
    expect(page).to have_button('Single Player')
    expect(page).to have_button('Two Player')
  end
end

feature "Single Player" do
  scenario "choosing single player leads to a name prompt" do
    visit('/')
    click_button('Single Player')
    expect(page).to have_content(/Enter your name!/)
  end

  scenario "player greeted with their name after inputting it" do
    go_to_play_page_singleplayer
    expect(page).to have_content(/Partario - make your choice!/)
  end

  scenario "player given the appropriate number of choices" do
    go_to_play_page_singleplayer
    expect(page).to have_css("button", :count => RockPaperScissors::CHOICES.length)
  end

  scenario "player shown computers choice after theirs and whether they've won" do
    srand(420)
    go_to_play_page_singleplayer
    click_button('rock')
    expect(page).to have_content(/Round 1 results!/)
    expect(page).to have_content(/Partario chose: Rock/)
    expect(page).to have_content(/Computer chose: Paper/)
    expect(page).to have_content(/The winner is Computer!/)
  end

  scenario "win condition can be achieved" do
    srand(420)
    go_to_play_page_singleplayer
    (RockPaperScissors::WIN_CONDITION * 2).times do
      click_button('rock')
      click_button('next')
    end
    expect(page).to have_content(/Partario wins the game!/)
  end
end

feature "Play screen" do
  scenario "Shows the score of both players" do
    go_to_play_page_singleplayer
    expect(page).to have_content(/Partario: 0 Computer: 0/)
  end
end

feature "Multiplayer" do
  scenario "Able to input two names" do
    go_to_play_page_multiplayer
    expect(page).to have_content(/Basil Jet: 0 Hamilton Meathouse: 0/)
  end

  scenario "Both players can take turns" do
    go_to_play_page_multiplayer
    click_button('rock')
    expect(page).to have_content(/Hamilton Meathouse - make your choice!/)
  end

  scenario "The correct player wins in a draw" do
    go_to_play_page_multiplayer
    click_button('rock')
    click_button('rock')
    expect(page).to have_content("The winner is no one, it's a draw!")
  end

  scenario "P1 wins" do
    go_to_play_page_multiplayer
    click_button('rock')
    click_button('scissors')
    expect(page).to have_content("The winner is Basil Jet!")
  end
end

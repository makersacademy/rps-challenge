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
    visit('/')
    click_button('Single Player')
    fill_in('name', with: 'Partario')
    click_button('Submit')
    expect(page).to have_content(/Partario - make your choice!/)
  end

  scenario "player given the appropriate number of choices" do
    visit('/')
    click_button('Single Player')
    fill_in('name', with: 'Partario')
    click_button('Submit')
    expect(page).to have_css("button", :count => RockPaperScissors::CHOICES.length)
  end
end

feature "Play screen" do
  scenario "Shows the score of both players" do
    visit('/')
    click_button('Single Player')
    fill_in('name', with: 'Partario')
    click_button('Submit')
    expect(page).to have_content(/Partario: 0 Computer: 0/)
  end
end
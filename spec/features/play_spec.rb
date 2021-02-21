#require "play.rb"

feature 'play' do
  before(:all) do
    Capybara.current_driver = :selenium
  end

  scenario 'can start a new game' do
    visit('/')
    expect(page).to have_content 'Begin Game'
  end

  scenario 'enters player name', js: true do
    visit('/')
    enter_1_player()
    expect(page).to have_content "Sargon of Akkad"
  end

  scenario 'enters two player names', js: true do
    visit('/')
    enter_2_players()
    expect(page).to have_content "Sargon of Akkad"
    expect(page).to have_content "Luh-ishan"
  end
end
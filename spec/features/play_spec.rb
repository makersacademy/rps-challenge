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
    fill_in "player_1_name", with: "Sargon of Akkad"
    click_button 'Begin Game'
    expect(page).to have_content "Sargon of Akkad"
  end

  scenario 'enters two player names', js: true do
    visit('/')
    fill_in :player_1_name, with: "Sargon of Akkad"
    click_button 'Add Player'
    fill_in :player_2_name, with: "Luh-ishan"
    click_button 'Begin Game'
    expect(page).to have_content "Sargon of Akkad"
    expect(page).to have_content "Luh-ishan"
  end
end
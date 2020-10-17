require "capybara/rspec"
require_relative "../../lib/app"
require_relative "../../lib/Game"

Capybara.app = Selection

feature "Homepage title and instructions show" do
  scenario "Title shows" do
    visit("/playervsplayer")
    expect(page).to have_content "Rock, Paper, Scissors game."
  end

  scenario "Instructions shows" do
    visit("/playervsplayer")
    expect(page).to have_text("Please enter your names.")
  end
end

feature "Players names appear" do
  scenario "Player 1 and 2 enter names" do
    visit("/playervsplayer")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    expect(page).to have_content "Welcome Tom and Ben"
  end
end

feature "Players select option" do

  scenario "select rock/paper/scissors" do
    visit("/playervsplayer")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    select('Rock', from: 'Player1selection')
    click_button "Submit"
    expect(page).to have_content("Tom has gone. Ben select:")
  end
end

feature "testing game functionality" do

  scenario "player two selects paper and beats player 1" do
    visit("/playervsplayer")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    select('Rock', from: 'Player1selection')
    click_button "Submit"
    select('Paper', from: 'Player2selection')
    click_button "Submit"
    expect(page).to have_content('Ben wins')
  end
end

feature "testing game functionality" do

  scenario "player two selects paper and beats player 1" do
    visit("/playervsplayer")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    expect(page).to have_content('Tom please make a selection:')
  end
end

feature "testing game functionality" do
  scenario "player two selects paper and beats player 1" do
    visit("/playervsplayer")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    select('Rock', from: 'Player1selection')
    click_button "Submit"
    select('Rock', from: 'Player2selection')
    click_button "Submit"
    expect(page).to have_content('It is a Draw!')
  end
end

feature "testing game functionality" do
  scenario "player two selects paper and beats player 1" do
    visit("/playervsplayer")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    select('Scissors', from: 'Player1selection')
    click_button "Submit"
    select('Rock', from: 'Player2selection')
    click_button "Submit"
    expect(page).to have_content('Ben wins')
  end
end

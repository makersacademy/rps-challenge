require_relative 'web_helper'
feature "Homepage" do
  before do
    visit '/'
  end
  scenario "the player can enter their name" do
    expect(page).to have_field("Name")
  end
  scenario "the player can start a game" do
  set_up
  expect(page).to have_content "Rock, Paper, Scissors!\nJeb Kerman VS Computer"
  end
end
feature "Game" do
  before do
    visit '/'
    set_up
  end
  scenario "the player chooses rock" do
    click_on('Rock')
    expect(page).to have_content "Jeb Kerman chooses Rock!"
  end
  scenario "the player chooses paper" do
    click_on('Paper')
    expect(page).to have_content "Jeb Kerman chooses Paper!"
  end
  scenario "the player chooses scissors" do
    click_on('Scissors')
    expect(page).to have_content "Jeb Kerman chooses Scissors!"
  end
end

require './app.rb'
require 'capybara/rspec'

feature 'register name' do
  scenario 'A player is able to enter their name to register to play' do
  register_name_to_play
  expect(page).to have_content("Spencer Please choose Rock, Paper or Scissors to play")
  end
end

feature 'Chooses a weapon' do
  scenario 'A player chooses Rock!' do
    register_name_to_play
    click_button "rock"
    expect(page).to have_content("You choose Rock")
  end
end

feature 'Chooses a weapon' do
  scenario 'A player chooses Paper!' do
    register_name_to_play
    click_button "paper"
    expect(page).to have_content("You choose Paper")
  end
end

feature 'Chooses a weapon' do
  scenario 'A player chooses Scissors!' do
    register_name_to_play
    click_button "scissors"
    expect(page).to have_content("You choose Scissors")
  end
end

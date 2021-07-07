require 'spec_helper'

feature 'Feature: Welcome page' do
  scenario 'Visitor recieves welcome message and can enter name into form' do
    visit '/'
    expect(page). to have_content "Let's play Rock, Paper, Scissors"
    expect(page). to have_content "Enter your name to begin"
    fill_in "name", with: "Sophie"
    click_button("Play")
  end
end

feature 'Feature: Play page' do
  scenario 'Player chooses between three buttons, Rock, Paper, Scissors' do
    start_game
    expect(page).to have_content('Hi Sophie, make your move!')
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
  end
end

feature 'Feature: Player clicks button' do
  scenario 'Player chooses rock' do
    start_game
    click_button("rock")
    expect(page).to have_content("Sophie you picked Rock")
  end
end

feature 'Feature: See computer move' do
  scenario 'Player can click to see computer move' do
    start_game
    click_button("rock")
    click_on 'See computer\'s move'
    expect(page).to have_content('wins')
  end
end

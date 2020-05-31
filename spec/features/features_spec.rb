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
    visit '/'
    expect(page). to have_content "Let's play Rock, Paper, Scissors"
    expect(page). to have_content "Enter your name to begin"
    fill_in "name", with: "Sophie"
    click_button("Play")
    expect(page).to have_content('Hi Sophie, make your move!')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end

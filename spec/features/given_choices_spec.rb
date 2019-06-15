require "././app.rb"
require_relative 'web_helpers.rb'

feature "given_choices" do
  scenario "lists Rock, Paper, Scissors" do
    sign_in_and_play
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
  scenario 'allows you to select an option and get a confirmation' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'rock')
    expect(page).to have_selector(:link_or_button, 'paper')
    expect(page).to have_selector(:link_or_button, 'scissors')
    click_on "rock"
    expect(page).to have_content "You chose rock"
    sign_in_and_play
    click_on "paper"
    expect(page).to have_content "You chose paper"
    sign_in_and_play
    click_on "scissors"
    expect(page).to have_content "You chose scissors"
  end
end

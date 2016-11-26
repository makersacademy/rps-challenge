require 'app.rb'
require 'spec_helper.rb'

feature "Winning" do

  scenario "Player 1 wins with scissors" do
    go_to_win
    expect(page).to have_content "Dave has won!"
    expect(page).to have_content "CPU lost"

  end

  scenario "Player 1 loses with scissors" do
    sign_in_with_dave
    srand(2)
    click_button "scissors"
    expect(page).to have_content "Dave lost"
    expect(page).to have_content "CPU has won!"
  end

  scenario "Game should ask for a rematch" do
    go_to_win
    click_button 'rematch'
    expect(page).to have_content "Dave vs. CPU"
  end

  scenario "Game should ask if you want to change player" do
    go_to_win
    click_button 'sign-in'
    expect(page).to have_content "Enter Player 1 Name:"
  end


end

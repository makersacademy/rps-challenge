require 'app.rb'
require 'spec_helper'

feature "Draw" do

  scenario "Should be able to handle a draw" do
    go_to_draw
    expect(page).to have_content "It was a draw!"
  end

  scenario "Should tell you what moves happened in case of draw" do
    go_to_draw
    expect(page).to have_content "Both players played rock!"
  end

  scenario "Should ask you to play again" do
    go_to_draw
    click_button 'rematch'
    expect(page).to have_content "Choose your move:"
  end

  scenario "Game should ask let you stop" do
    go_to_draw
    click_button 'sign-in'
    expect(page).to have_content "Enter Player 1 Name:"
  end
end

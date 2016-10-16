require 'spec_helper'

feature 'results (player vs player)' do

  before do
    sign_in_two_players
  end

  scenario 'Player 1 wins' do
    find(:css, "#1[value='rock']").set(true)
    find(:css, "#2[value='scissors']").set(true)
    click_button "Submit"
    expect(page).to have_content "Pop wins!"
  end

  scenario 'Player 2 wins' do
    find(:css, "#1[value='rock']").set(true)
    find(:css, "#2[value='paper']").set(true)
    click_button "Submit"
    expect(page).to have_content "Bob wins!"
  end

  scenario 'result is draw if both players choose rock' do
    find(:css, "#1[value='rock']").set(true)
    find(:css, "#2[value='rock']").set(true)
    click_button "Submit"
    expect(page).to have_content "It's a draw!"
  end

end

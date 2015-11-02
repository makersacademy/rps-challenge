require 'spec_helper'

feature 'multiplayer fighting' do
  scenario 'round 1 of exchanges' do
    sign_in_and_p1_select_rock
    click_button 'Paper'
    expect(page).to have_content('Round 1. Leigh-Ann wins with Paper!')
  end
end
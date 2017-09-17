require 'spec_helper'

feature 'select a weapon' do
  scenario 'selects rock as weapon' do
    register_and_play
    click_button "Rock"
    expect(page).to(have_content("Allanon selected Rock"))
  end

  scenario 'selects paper as weapon' do
    register_and_play
    click_button "Paper"
    expect(page).to(have_content("Allanon selected Paper"))
  end

  scenario 'selects scissors as weapon' do
    register_and_play
    click_button "Scissors"
    expect(page).to(have_content("Allanon selected Scissors"))
  end
end

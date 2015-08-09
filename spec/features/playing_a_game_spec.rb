require 'spec_helper'

feature 'Playing a game' do
  scenario 'choosing an option' do
    visit '/game'
    find("option[value='rock']").click
    click_button "Deploy"
    expect(page).to have_content "computer"
  end

  scenario 'winning a game' do
    visit '/game'
    find("option[value='rock']").click
    click_button "Deploy"
    expect(page).to have_content "computer"
  end
end

require 'spec_helper'

feature "name form" do
  scenario "a player signs in" do
    sign_in
    expect(page).to have_content("It's your move, Steve!")
  end
end

feature "play page" do
  scenario "a player has the option to click the rock" do
    sign_in
    expect(page).to have_button('rock')
  end

  scenario "a player has the option to click the paper" do
    sign_in
    expect(page).to have_button('paper')
  end

  scenario "a player has the option to click the scissors" do
    sign_in
    expect(page).to have_button('scissors')
  end
end

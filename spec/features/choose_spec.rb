require 'spec_helper'

feature 'Choose Weapon' do
  scenario "player chose rock" do
    sign_in
    click_button 'rock'
    expect(page).to have_content "Archer chose rock."
  end
  scenario "player chose scissors" do
    sign_in
    click_button 'scissors'
    expect(page).to have_content "Archer chose scissors."
  end
  scenario "player chose paper" do
    sign_in
    click_button 'paper'
    expect(page).to have_content "Archer chose paper."
  end
end

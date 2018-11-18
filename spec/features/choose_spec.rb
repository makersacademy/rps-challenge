require 'spec_helper'

feature 'Choose Weapon' do
  scenario "players chose rock" do
    two_player_sign_in
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content "Rick chose rock."
    expect(page).to have_content "Morty chose rock."
  end
  scenario "players chose scissors" do
    two_player_sign_in
    click_button 'scissors'
    click_button 'scissors'
    expect(page).to have_content "Rick chose scissors."
    expect(page).to have_content "Morty chose scissors."
  end
  scenario "players chose paper" do
    two_player_sign_in
    click_button 'paper'
    click_button 'paper'
    expect(page).to have_content "Rick chose paper."
    expect(page).to have_content "Morty chose paper."
  end
end

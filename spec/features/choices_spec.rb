require 'spec_helper'

feature 'select between weapons' do
  scenario 'players can select rock' do
    sign_in
    expect(page).to have_button "ROCK"
  end
  scenario 'players can select paper' do
    sign_in
    expect(page).to have_button "PAPER"
  end
  scenario 'players can select scissors' do
    sign_in
    expect(page).to have_button "SCISSORS"
  end
end

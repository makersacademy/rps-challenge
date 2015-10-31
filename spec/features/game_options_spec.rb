require 'spec_helper'

feature 'Playing the game' do
  scenario 'User has ROCK option' do
    sign_in
    expect(page).to have_button 'ROCK'
  end
end

feature 'Playing the game' do
  scenario 'User has PAPER option' do
    sign_in
    expect(page).to have_button 'PAPER'
  end
end

feature 'Playing the game' do
  scenario 'User has SCISSORS option' do
    sign_in
    expect(page).to have_button 'SCISSORS'
  end
end
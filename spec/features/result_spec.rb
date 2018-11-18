require 'spec_helper'

feature 'Both players' do
  scenario 'chose rock' do
    weapon_set('rock', 'rock')
    expect(page).to have_content "It's a draw!"
  end
  scenario 'Chose paper' do
    weapon_set('paper', 'paper')
    expect(page).to have_content "It's a draw!"
  end
  scenario 'Chose scissors' do
    weapon_set('scissors', 'scissors')
    expect(page).to have_content "It's a draw!"
  end
end

feature 'p_1 chose rock' do
  scenario 'p_2 chose paper' do
    weapon_set('rock', 'paper')
    expect(page).to have_content "Paper covers rock. Hal wins!"
  end
  scenario 'p_2 chose scissors' do
    weapon_set('rock', 'scissors')
    expect(page).to have_content "Rock blunts scissors. Archer wins!"
  end
end

feature 'p_1 chose paper' do
  scenario 'p_2 chose rock' do
    weapon_set('paper', 'rock')
    expect(page).to have_content "Paper covers rock. Archer wins!"
  end
  scenario 'p_2 chose scissors' do
    weapon_set('paper', 'scissors')
    expect(page).to have_content "Scissors cut paper. Hal wins!"
  end
end

feature 'p_1 chose scissors' do
  scenario 'p_2 chose rock' do
    weapon_set('scissors', 'rock')
    expect(page).to have_content "Rock blunts scissors. Hal wins!"
  end
  scenario 'p_2 chose paper' do
    weapon_set('scissors', 'paper')
    expect(page).to have_content "Scissors cut paper. Archer wins!"
  end
end

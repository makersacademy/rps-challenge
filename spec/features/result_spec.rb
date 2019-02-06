# frozen_string_literal: true

require 'spec_helper'

feature 'Both players' do
  scenario 'chose rock' do
    weapon_set('rock', 'rock')
    expect(page).to have_content("It's a draw!")
  end

  scenario 'chose paper' do
    weapon_set('paper', 'paper')
    expect(page).to have_content("It's a draw!")
  end

  scenario 'chose scissors' do
    weapon_set('scissors', 'scissors')
    expect(page).to have_content("It's a draw!")
  end

  scenario 'chose lizard' do
    weapon_set('lizard', 'lizard')
    expect(page).to have_content("It's a draw!")
  end

  scenario 'chose spock' do
    weapon_set('spock', 'spock')
    expect(page).to have_content("It's a draw!")
  end
end

feature 'p_1 chose rock' do
  scenario 'p_2 chose paper' do
    weapon_set('rock', 'paper')
    expect(page).to have_content('Paper covers rock. Morty wins!')
  end

  scenario 'p_2 chose scissors' do
    weapon_set('rock', 'scissors')
    expect(page).to have_content('Rock crushes scissors. Rick wins!')
  end

  scenario 'p_2 chose lizard' do
    weapon_set('rock', 'lizard')
    expect(page).to have_content('Rock crushes lizard. Rick wins!')
  end

  scenario 'p_2 chose spock' do
    weapon_set('rock', 'spock')
    expect(page).to have_content('Spock vaporizes rock. Morty wins!')
  end
end

feature 'p_1 chose paper' do
  scenario 'p_2 chose rock' do
    weapon_set('paper', 'rock')
    expect(page).to have_content('Paper covers rock. Rick wins!')
  end

  scenario 'p_2 chose scissors' do
    weapon_set('paper', 'scissors')
    expect(page).to have_content('Scissors cuts paper. Morty wins!')
  end

  scenario 'p_2 chose lizard' do
    weapon_set('paper', 'lizard')
    expect(page).to have_content('Lizard eats paper. Morty wins!')
  end

  scenario 'p_2 chose spock' do
    weapon_set('paper', 'spock')
    expect(page).to have_content('Paper disproves spock. Rick wins!')
  end
end

feature 'p_1 chose scissors' do
  scenario 'p_2 chose rock' do
    weapon_set('scissors', 'rock')
    expect(page).to have_content('Rock crushes scissors. Morty wins!')
  end

  scenario 'p_2 chose paper' do
    weapon_set('scissors', 'paper')
    expect(page).to have_content('Scissors cuts paper. Rick wins!')
  end

  scenario 'p_2 chose lizard' do
    weapon_set('scissors', 'lizard')
    expect(page).to have_content('Scissors decapitates lizard. Rick wins!')
  end

  scenario 'p_2 chose spock' do
    weapon_set('scissors', 'spock')
    expect(page).to have_content('Spock smashes scissors. Morty wins!')
  end
end

feature 'p_1 chose lizard' do
  scenario 'p_2 chose rock' do
    weapon_set('lizard', 'rock')
    expect(page).to have_content('Rock crushes lizard. Morty wins!')
  end

  scenario 'p_2 chose paper' do
    weapon_set('lizard', 'paper')
    expect(page).to have_content('Lizard eats paper. Rick wins!')
  end

  scenario 'p_2 chose scissors' do
    weapon_set('lizard', 'scissors')
    expect(page).to have_content('Scissors decapitates lizard. Morty wins!')
  end

  scenario 'p_2 chose spock' do
    weapon_set('lizard', 'spock')
    expect(page).to have_content('Lizard poisons spock. Rick wins!')
  end
end

feature 'p_1 chose spock' do
  scenario 'p_2 chose rock' do
    weapon_set('spock', 'rock')
    expect(page).to have_content('Spock vaporizes rock. Rick wins!')
  end

  scenario 'p_2 chose paper' do
    weapon_set('spock', 'paper')
    expect(page).to have_content('Paper disproves spock. Morty wins!')
  end

  scenario 'p_2 chose scissors' do
    weapon_set('spock', 'scissors')
    expect(page).to have_content('Spock smashes scissors. Rick wins!')
  end

  scenario 'p_2 chose lizard' do
    weapon_set('spock', 'lizard')
    expect(page).to have_content('Lizard poisons spock. Morty wins!')
  end
end

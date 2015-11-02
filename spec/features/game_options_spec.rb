require 'spec_helper'

feature 'Playing the game' do
  scenario 'User has ROCK option' do
    sign_in
    expect(page).to have_button 'ROCK'
  end

  scenario 'User has PAPER option' do
    sign_in
    expect(page).to have_button 'PAPER'
  end

  scenario 'User has SCISSORS option' do
    sign_in
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'User has LIZARD option' do
    sign_in_alt_game
    expect(page).to have_button 'LIZARD'
  end

  scenario 'User has SPOCK option' do
    sign_in_alt_game
    expect(page).to have_button 'SPOCK'
  end

  scenario 'User plays ROCK' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Player 1 chose: ROCK'
  end
 
  scenario 'User plays PAPER' do
    sign_in
    click_button('PAPER')
    expect(page).to have_content 'Player 1 chose: PAPER'
  end

  scenario 'User plays SCISSORS' do
    sign_in
    click_button('SCISSORS')
    expect(page).to have_content 'Player 1 chose: SCISSORS'
  end

  scenario 'User plays LIZARD' do
    sign_in_alt_game
    click_button('LIZARD')
    expect(page).to have_content 'Player 1 chose: LIZARD'
  end

  scenario 'User plays SPOCK' do
    sign_in_alt_game
    click_button('SPOCK')
    expect(page).to have_content 'Player 1 chose: SPOCK'
  end

  scenario 'Computer plays ROCK' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Computer chose: ROCK'
  end

  scenario 'Computer plays PAPER' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Computer chose: PAPER'
  end

  scenario 'Computer plays SCISSORS' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Computer chose: SCISSORS'
  end

  scenario 'Computer plays LIZARD' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
    sign_in_alt_game
    click_button('ROCK')
    expect(page).to have_content 'Computer chose: LIZARD'
  end

  scenario 'Computer plays SPOCK' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    sign_in_alt_game
    click_button('ROCK')
    expect(page).to have_content 'Computer chose: SPOCK'
  end

end


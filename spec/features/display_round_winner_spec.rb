require 'spec_helper'

feature 'Classic game: Display the round winner' do
  scenario 'A player has won the round' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in
    click_button('ROCK')
    expect(page).to have_content "PLAYER 1 WON!"
  end

  scenario 'A player has lost the round' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    click_button('SCISSORS')
    expect(page).to have_content "COMPUTER WON!"
  end

  scenario 'A draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    click_button('ROCK')
    expect(page).to have_content "IT'S A DRAW!!!"
  end
end

feature 'Alternative game: Display the round winner' do
  scenario 'A player has won the round' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    sign_in_alt_game
    click_button('LIZARD')
    expect(page).to have_content "PLAYER 1 WON!"
  end

  scenario 'A player has lost the round' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
    sign_in_alt_game
    click_button('SPOCK')
    expect(page).to have_content "COMPUTER WON!"
  end

  scenario 'A draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
    sign_in_alt_game
    click_button('LIZARD')
    expect(page).to have_content "IT'S A DRAW!!!"
  end
end
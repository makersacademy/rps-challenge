require 'spec_helper'

feature 'the game ends' do
  scenario "player chooses 'ROCK' and wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('SCISSORS')
    enter_name_click_submit
    click_button 'ROCK'
    expect(page).to have_content "YOU WON!"
  end

  scenario "player chooses 'ROCK' and loses" do
    allow_any_instance_of(Array).to receive(:sample).and_return('PAPER')
    enter_name_click_submit
    click_button 'ROCK'
    expect(page).to have_content "YOU LOST!"
  end

  scenario "player chooses 'ROCK' and draws" do
    allow_any_instance_of(Array).to receive(:sample).and_return('DRAW')
    enter_name_click_submit
    click_button 'ROCK'
    expect(page).to have_content "DRAW!"
  end

  scenario "player wins and wants to play again" do
    allow_any_instance_of(Array).to receive(:sample).and_return('SCISSORS')
    enter_name_click_submit
    click_button 'ROCK'
    click_button 'Play again?'
    expect(page).to have_content 'Welcome Michael!'
  end

end

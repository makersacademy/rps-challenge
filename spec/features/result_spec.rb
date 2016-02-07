
require 'capybara/rspec'

feature 'winner' do

  scenario 'paper will beat rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    click_button "paper"
    expect(page).to have_content 'winner Scott'
  end

  scenario 'scissors will beat paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in
    click_button "scissors"
    expect(page).to have_content 'winner Scott'
  end

  scenario 'rock will beat scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in
    click_button "rock"
    expect(page).to have_content 'winner Scot'
  end

  scenario 'can play again' do
    sign_in
    click_button "rock"
    click_button 'play again?'
    expect(page).to have_content 'Scott vs The Computer'
  end
end

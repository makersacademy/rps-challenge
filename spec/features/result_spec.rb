require './app.rb'
require 'capybara/rspec'
require './lib/roshambo.rb'

Capybara.app = RPS

feature "Showing roll on result page" do
  scenario "Expect to show roll sentense Rock" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(0..2).and_return(0)
    click_button "Rock!"
    expect(page).to have_content "The computer chose Rock!"
  end

  scenario "Expect to show roll sentence Paper" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(0..2).and_return(1)
    click_button "Rock!"
    expect(page).to have_content "The computer chose Paper!"
  end

  scenario "Expect to show roll sentence Scissors" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(0..2).and_return(2)
    click_button "Rock!"
    expect(page).to have_content "The computer chose Scissors!"
  end
end

require 'spec_helper'
require_relative '../../rps.rb'
require_relative 'web_helpers'

feature Rps do

  scenario "it says hello Player" do
    visit('/')
    expect(page).to have_text("Hello Player!")
  end
end

feature "Print weapon of chioce" do
  scenario "choose rock" do
    enter_name
    visit('/play')
    players_choice
    expect(page).to have_content "Rock"
  end

  scenario "choose paper" do
    enter_name
    visit('/play')
    players_choice
    expect(page).to have_content "Paper"
  end

  scenario "choose scissors" do
    enter_name
    visit('/play')
    players_choice
    expect(page).to have_content "Scissors"
  end
end

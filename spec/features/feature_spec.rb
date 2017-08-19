require 'spec_helper'
require_relative '../../rps.rb'
# RSpec.feature "Home page", type: :feature do
feature Rps do

  scenario "it says hello Player" do
    visit('/')
    expect(page).to have_text("Hello Player!")
    # enter_name
  end

  scenario "choose rock" do
    enter_name
    rock
    expect(page).to have_content "Rock"
  end

  scenario "choose paper" do
    enter_name
    paper
    expect(page).to have_content "Paper"
  end

  scenario "choose scissors" do
    enter_name
    scissors
    expect(page).to have_content "Scissors"
  end
end

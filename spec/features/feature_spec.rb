require 'spec_helper'
require_relative '../../rps.rb'
require_relative 'web_helpers'
# require_relative '../../play.erb'

feature Rps do

  scenario "it says hello Player" do
    visit('/')
    expect(page).to have_text("Hello Player!")
  end
end

feature "Print weapon of chioce" do
  scenario "choose rock" do
    visit('/play/Rock')
    expect(page).to have_content "Rock"
  end

  scenario "choose paper" do
    visit('/play/Paper')
    expect(page).to have_content "Paper"
  end

  scenario "choose scissors" do
    visit('/play/Scissors')
    expect(page).to have_content "Scissors"
  end
end

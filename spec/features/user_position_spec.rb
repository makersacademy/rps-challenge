require 'capybara/rspec'
require 'spec_helper'
require './app'

feature 'In Play Game page,' do

  scenario 'user can select position: rock' do
    visit '/play'
    click_on('Rock')
  end

  scenario 'user can select position: paper' do
    visit '/play'
    click_on('Paper')
  end
  
  scenario 'user can select position: scissors' do
    visit '/play'
    click_on('Scissors')
  end
end
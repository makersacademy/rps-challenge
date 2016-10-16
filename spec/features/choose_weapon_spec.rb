require 'spec_helper'
require '././rps.rb'

RSpec.feature 'starting the game', :type => :feature do
  scenario 'computer greets player' do
    sign_in_and_play
    expect(page).to have_text("Welcome, Frodo.")
  end
end

RSpec.feature 'choosing a weapon', :type => :feature do
  scenario 'user enter their weapon of shoice' do
    sign_in_and_play
    click_link('Scissors')
  end

  scenario 'user receives a confirmation of their weapon of choice' do
    sign_in_and_play
    click_link('Scissors')
    expect(page).to have_text('You chose Scissors!')
  end
end

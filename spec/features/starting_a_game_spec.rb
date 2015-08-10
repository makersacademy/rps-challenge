require 'spec_helper.rb'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'When I enter my name a new game starts' do
    visit '/'
    fill_in 'playername', with: 'Antonio'
    click_button 'New Game'
    expect(page).to have_content "Hello Antonio, welcome to Rock, Paper, Scissors!"
  end

end

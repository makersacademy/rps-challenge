require 'spec_helper'

feature 'Starting new game' do
  scenario 'I see a greeting when I start the game' do
    visit '/'
    expect(page).to have_content "Welcome! Are you ready for new game"
  end
  end

feature 'Starting new game' do
  scenario 'I am asked to enter my name' do
    visit '/request'
    expect(page).to have_content "What's your name?"
  end
  end

   feature 'We should check that Player input his name' do
   scenario "What's your name?"  do
   redirect '/request?name='if @name == ""
   expect(page).to have_content "You didn't input your name, please try again."
   end
 end

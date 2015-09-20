require 'spec_helper'

feature 'Starting a new game' do

  before do
    visit '/'
    fill_in('name', :with => "John")
    click_button('Submit')
  end

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content 'Please enter your name:'
  end

  scenario 'have a welcome message after I have entered my name' do
    expect(page).to have_content "Welcome John"
    expect(page).to have_content "Click the Start button to begin"
  end

  scenario 'can start a game' do
    click_button('Start')
    expect(page).to have_content 'Choose Wisely John'
  end

end

require 'spec_helper'

feature 'Enter name' do

  scenario 'visiting the home page' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
    expect(page).to have_content 'Enter name:'
  end

  scenario 'entering player name' do
    enter_name
    expect(page).to have_content 'Choose wisely, young Abigail...'
  end

end

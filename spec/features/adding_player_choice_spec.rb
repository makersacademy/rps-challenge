require 'spec_helper'

feature 'Player makes a choice of r,p, or s' do

  scenario '#player enters choice' do
    visit "/"
    enter_name_and_choice
    expect(page).to have_content('You have chosen rock')
  end

end

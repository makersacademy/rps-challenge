require 'spec_helper'

feature "Starting a new game" do
  
  scenario "Front page links through" do
  visit "/"
  click_link "Click here to get started!"
  expect(page).to have_content "Hello human. Do you want to play a game? :)"
  end

  scenario "Cannot proceed without a name" do
  visit "/"
  click_link "Click here to get started!"
  fill_in 'name', :with => 'bob'
  click_button "Let's do this"
  expect(page).to have_content "Hello human. Do you want to play a game? :)"
  end

end
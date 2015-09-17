require 'spec_helper'

feature "Starting a new game" do
  
  scenario "Front page links through" do
  visit "/"
  click_link "Click here to get started!"
  expect(page).to have_content "What's your name?"
  end

end
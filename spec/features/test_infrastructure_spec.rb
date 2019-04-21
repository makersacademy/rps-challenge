require 'spec_helper'

feature 'Testing infrastructure' do
  scenario 'checks hompage message' do
    visit('/')
    expect(page).to have_content("Please enter you name: ")
  end
end

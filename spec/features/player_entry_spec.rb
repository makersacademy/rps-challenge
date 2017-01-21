require 'spec_helper'

feature 'allows player to enter name' do
  scenario 'player enters name' do
    visit '/'
    expect(page).to have_content "Enter your name here"
  end
end

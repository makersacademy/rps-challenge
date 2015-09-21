require 'spec_helper'

feature 'starting a new game' do
  scenario 'player is asked to enter their name' do
    visit '/'
    expect(page).to have_content "Please enter your name!"
  end
end

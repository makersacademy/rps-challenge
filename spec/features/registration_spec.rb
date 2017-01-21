require 'spec_helper'

# User Story 1:

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registration' do
  scenario 'submitting name' do
    register
    expect(page).to have_content 'Welcome, Katerina!'
  end
end

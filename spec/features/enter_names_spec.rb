require 'spec_helper'
require 'web_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Register name'do
  scenario 'player to submit name'do
    register_and_play
    expect(page).to have_content ("Current player : Amy")
  end
end

require 'spec_helper'
require 'web_helpers'

# USER STORY ONE
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter names' do
  scenario 'so a players can feel more involved with the game they can enter thier name to play a personalized battle.' do
    sign_in_and_play
    expect(page).to have_content 'SHELDON'
  end
end

require 'spec_helper'
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Sheldon vs Computer'
  end
end

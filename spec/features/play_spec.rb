require 'spec_helper'
require_relative 'web_helpers'

feature 'playing rock, paper, scissors' do
  scenario 'it displays rock, paper, scissors options' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'it prompts for a choice' do
    sign_in_and_play
    expect(page).to have_content('You choose')
  end
end

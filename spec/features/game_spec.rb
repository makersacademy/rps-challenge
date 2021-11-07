require 'spec_helper'
require 'web_helpers'

feature 'play rock, paper, scissors' do
    scenario 'player can win: player = rock, computer stumped to choose scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      sign_in_and_play
      choose('rock')
      click_button('Results!')
      expect(page).to have_content 'You won!'
    end
end
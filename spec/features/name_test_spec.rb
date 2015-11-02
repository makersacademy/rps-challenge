require 'capybara'
require 'web_helpers.rb'

  feature 'registers player name' do

    scenario 'asks to enter name' do

      register_and_play
      expect(page).to have_content('SuperMarketer')

    end

  end

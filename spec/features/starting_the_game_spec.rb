  require 'spec_helper'

  feature 'Starting the game.' do

    scenario 'displays welcome message' do
      visit '/'
      expect(page).to have_content 'Welcome, brave marketeer.'
    end

  end

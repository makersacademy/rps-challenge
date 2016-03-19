require 'spec_helper'
require 'capybara'

feature '#Starts the game' do
  scenario 'with name param' do
      sign_in_and_play
      expect(page).to have_text("Murilo")
  end
end
